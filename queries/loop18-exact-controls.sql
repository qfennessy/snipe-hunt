WITH controls AS (
  SELECT 'self-evolving/repo' AS repo_name, '131' AS item, '0504' AS day_suffix
  UNION ALL SELECT 'max-sixty/tend', '627', '0528'
  UNION ALL SELECT 'AgentsLoop/OhMyGithub', '56', '0825'
)
SELECT id, type, repo.name AS repo, actor.login AS actor, created_at,
  JSON_VALUE(payload, '$.action') AS action,
  COALESCE(JSON_VALUE(payload, '$.issue.number'), JSON_VALUE(payload, '$.pull_request.number'), JSON_VALUE(payload, '$.number')) AS number,
  JSON_VALUE(payload, '$.comment.id') AS comment_id,
  JSON_VALUE(payload, '$.issue.body') IS NOT NULL AS has_issue_body,
  JSON_VALUE(payload, '$.pull_request.body') IS NOT NULL AS has_pr_body,
  JSON_VALUE(payload, '$.comment.body') IS NOT NULL AS has_comment_body,
  SUBSTR(COALESCE(JSON_VALUE(payload, '$.comment.body'), JSON_VALUE(payload, '$.issue.body'), JSON_VALUE(payload, '$.pull_request.body')), 1, 350) AS excerpt
FROM `githubarchive.day.2026*` AS events
JOIN controls ON repo.name = controls.repo_name
  AND _TABLE_SUFFIX = controls.day_suffix
WHERE _TABLE_SUFFIX IN ('0504', '0528', '0825')
  AND COALESCE(JSON_VALUE(payload, '$.issue.number'), JSON_VALUE(payload, '$.pull_request.number'), JSON_VALUE(payload, '$.number')) = controls.item
ORDER BY created_at
LIMIT 100
