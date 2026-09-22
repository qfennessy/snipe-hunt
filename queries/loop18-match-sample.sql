SELECT id, type, repo.name AS repo, actor.login AS actor, created_at,
  COALESCE(JSON_VALUE(payload, '$.comment.html_url'), JSON_VALUE(payload, '$.issue.html_url'), JSON_VALUE(payload, '$.pull_request.url')) AS url,
  REGEXP_CONTAINS(LOWER(payload), r'\b(future agents?|next agent|another agents?|other agents?)\b') AS phrase_match,
  LOWER(payload) LIKE '%gist.github.com%' AND REGEXP_CONTAINS(LOWER(payload), r'agent|claude|codex|gpt|bot') AS gist_agent_match,
  SUBSTR(COALESCE(JSON_VALUE(payload, '$.comment.body'), JSON_VALUE(payload, '$.issue.body'), JSON_VALUE(payload, '$.pull_request.body')), 1, 600) AS excerpt
FROM `githubarchive.day.20260528`
WHERE type IN ('IssueCommentEvent', 'IssuesEvent', 'PullRequestEvent', 'PullRequestReviewCommentEvent', 'PushEvent', 'ReleaseEvent', 'GollumEvent')
  AND (REGEXP_CONTAINS(LOWER(payload), r'\b(future agents?|next agent|another agents?|other agents?)\b')
       OR (LOWER(payload) LIKE '%gist.github.com%' AND REGEXP_CONTAINS(LOWER(payload), r'agent|claude|codex|gpt|bot')))
ORDER BY created_at
LIMIT 15
