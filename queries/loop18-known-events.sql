SELECT id, type, repo.name AS repo, actor.login AS actor, created_at,
  JSON_VALUE(payload, '$.action') AS action,
  COALESCE(JSON_VALUE(payload, '$.issue.number'), JSON_VALUE(payload, '$.pull_request.number'), JSON_VALUE(payload, '$.number')) AS number,
  payload
FROM `githubarchive.day.2026*`
WHERE _TABLE_SUFFIX IN ('0504', '0528', '0825')
  AND repo.name IN ('self-evolving/repo', 'max-sixty/tend', 'AgentsLoop/OhMyGithub')
ORDER BY created_at
LIMIT 150
