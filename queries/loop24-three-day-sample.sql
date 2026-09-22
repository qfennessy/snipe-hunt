WITH events AS (
  SELECT
    id,
    type,
    created_at,
    repo.name AS repo,
    actor.login AS actor,
    JSON_VALUE(payload, '$.action') AS action,
    JSON_VALUE(payload, '$.comment.html_url') AS comment_url,
    JSON_VALUE(payload, '$.issue.html_url') AS issue_url,
    JSON_VALUE(payload, '$.pull_request.html_url') AS pr_url,
    COALESCE(
      JSON_VALUE(payload, '$.comment.body'),
      JSON_VALUE(payload, '$.issue.body'),
      JSON_VALUE(payload, '$.pull_request.body')
    ) AS body
  FROM `githubarchive.day.2026052*`
  WHERE _TABLE_SUFFIX IN ('7', '8', '9')
    AND type IN ('IssueCommentEvent', 'IssuesEvent', 'PullRequestEvent',
      'PullRequestReviewCommentEvent', 'PushEvent', 'ReleaseEvent', 'GollumEvent')
), matches AS (
  SELECT *,
    REGEXP_CONTAINS(LOWER(body), r'\b(future agents?|next agent|another agents?|other agents?)\b') AS phrase_hit,
    LOWER(body) LIKE '%gist.github.com%'
      AND REGEXP_CONTAINS(LOWER(body), r'agent|claude|codex|gpt|bot') AS gist_agent_hit
  FROM events
  WHERE body IS NOT NULL
)
SELECT
  id, type, created_at, repo, actor, action,
  COALESCE(comment_url, issue_url, pr_url) AS url,
  phrase_hit, gist_agent_hit,
  SUBSTR(REGEXP_REPLACE(body, r'\s+', ' '), 1, 360) AS excerpt
FROM matches
WHERE phrase_hit OR gist_agent_hit
QUALIFY ROW_NUMBER() OVER (PARTITION BY repo ORDER BY gist_agent_hit DESC, created_at) <= 2
ORDER BY gist_agent_hit DESC, created_at
LIMIT 80;
