WITH events AS (
  SELECT
    id, type, created_at, repo.name AS repo, actor.login AS actor,
    COALESCE(
      JSON_VALUE(payload, '$.comment.body'),
      JSON_VALUE(payload, '$.issue.body'),
      JSON_VALUE(payload, '$.pull_request.body')
    ) AS body,
    COALESCE(
      JSON_VALUE(payload, '$.comment.html_url'),
      JSON_VALUE(payload, '$.issue.html_url'),
      JSON_VALUE(payload, '$.pull_request.html_url')
    ) AS event_url
  FROM `githubarchive.day.2026052*`
  WHERE _TABLE_SUFFIX IN ('7', '8', '9')
    AND type IN ('IssueCommentEvent', 'IssuesEvent', 'PullRequestEvent',
      'PullRequestReviewCommentEvent', 'PushEvent', 'ReleaseEvent', 'GollumEvent')
), candidates AS (
  SELECT *,
    REGEXP_CONTAINS(LOWER(body), r'\b(future agents?|next agent|another agents?|other agents?)\b') AS phrase_hit,
    LOWER(body) LIKE '%gist.github.com%'
      AND REGEXP_CONTAINS(LOWER(body), r'agent|claude|codex|gpt|bot') AS gist_agent_hit,
    REGEXP_EXTRACT_ALL(body, r'https?://(?:www\.)?(?:gist\.)?github\.com/([A-Za-z0-9_.-]+)') AS linked_owners,
    REGEXP_EXTRACT_ALL(body, r'https?://(?:www\.)?(?:gist\.)?github\.com/[^\s)<>"\]]+') AS github_links
  FROM events
  WHERE body IS NOT NULL
)
SELECT
  id, created_at, type, repo, actor, event_url, phrase_hit, gist_agent_hit,
  ARRAY(SELECT DISTINCT linked_owner FROM UNNEST(linked_owners) AS linked_owner
    WHERE LOWER(linked_owner) != LOWER(SPLIT(repo, '/')[SAFE_OFFSET(0)])) AS external_owners,
  ARRAY(SELECT link FROM UNNEST(github_links) AS link LIMIT 3) AS links,
  SUBSTR(REGEXP_REPLACE(body, r'\s+', ' '), 1, 350) AS excerpt
FROM candidates
WHERE (phrase_hit OR gist_agent_hit)
  AND EXISTS (
    SELECT 1 FROM UNNEST(linked_owners) AS linked_owner
    WHERE LOWER(linked_owner) != LOWER(SPLIT(repo, '/')[SAFE_OFFSET(0)])
      AND LOWER(linked_owner) NOT IN ('features', 'settings', 'login', 'signup')
  )
QUALIFY ROW_NUMBER() OVER (PARTITION BY repo ORDER BY created_at) <= 3
ORDER BY gist_agent_hit DESC, created_at
LIMIT 100;
