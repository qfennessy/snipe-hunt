SELECT
  COUNT(*) AS event_count,
  COUNTIF(REGEXP_CONTAINS(LOWER(payload), r'\b(future agents?|next agent|another agents?|other agents?)\b')) AS phrase_matches,
  COUNTIF(LOWER(payload) LIKE '%gist.github.com%') AS gist_matches,
  COUNTIF(LOWER(payload) LIKE '%gist.github.com%' AND REGEXP_CONTAINS(LOWER(payload), r'agent|claude|codex|gpt|bot')) AS gist_agent_matches,
  COUNTIF(JSON_VALUE(payload, '$.issue.body') IS NOT NULL) AS with_issue_body,
  COUNTIF(JSON_VALUE(payload, '$.comment.body') IS NOT NULL) AS with_comment_body,
  COUNTIF(JSON_VALUE(payload, '$.pull_request.body') IS NOT NULL) AS with_pr_body
FROM `githubarchive.day.20260528`
WHERE type IN ('IssueCommentEvent', 'IssuesEvent', 'PullRequestEvent', 'PullRequestReviewCommentEvent', 'PushEvent', 'ReleaseEvent', 'GollumEvent')
