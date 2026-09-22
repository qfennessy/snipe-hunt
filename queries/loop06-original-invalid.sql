-- Historical query recovered from cocos-story-v2:US.bqjob_r3cba50d6da669557_000001a0ca2d2340_1.
-- INVALID DISCOVERY QUERY: raw regex literals are over-escaped. Do not reuse.
SELECT
  type,
  repo.name AS repo,
  actor.login AS actor,
  created_at,
  REGEXP_EXTRACT(payload, r"https?://gist\\.github\\.com/[^\\\"[:space:]]+") AS gist_url,
  SUBSTR(COALESCE(
    JSON_VALUE(payload, "$.comment.body"),
    JSON_VALUE(payload, "$.issue.body"),
    JSON_VALUE(payload, "$.pull_request.body"),
    JSON_VALUE(payload, "$.release.body"),
    JSON_VALUE(payload, "$.commits[0].message")
  ), 1, 900) AS text
FROM `githubarchive.day.20260*`
WHERE _TABLE_SUFFIX BETWEEN "501" AND "922"
  AND type IN ("IssueCommentEvent", "IssuesEvent", "PullRequestEvent", "PullRequestReviewCommentEvent", "PushEvent", "ReleaseEvent", "GollumEvent")
  AND REGEXP_CONTAINS(LOWER(payload), r"gist\\.github\\.com")
  AND REGEXP_CONTAINS(LOWER(payload), r"agent|claude|codex|gpt|bot")
LIMIT 200
