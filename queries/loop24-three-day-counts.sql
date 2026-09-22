WITH events AS (
  SELECT
    SUBSTR(CAST(created_at AS STRING), 1, 10) AS day,
    payload,
    COALESCE(
      JSON_VALUE(payload, '$.comment.body'),
      JSON_VALUE(payload, '$.issue.body'),
      JSON_VALUE(payload, '$.pull_request.body')
    ) AS body
  FROM `githubarchive.day.2026052*`
  WHERE _TABLE_SUFFIX IN ('7', '8', '9')
    AND type IN ('IssueCommentEvent', 'IssuesEvent', 'PullRequestEvent',
      'PullRequestReviewCommentEvent', 'PushEvent', 'ReleaseEvent', 'GollumEvent')
)
SELECT
  day,
  COUNT(*) AS event_count,
  COUNTIF(REGEXP_CONTAINS(LOWER(payload), r'\b(future agents?|next agent|another agents?|other agents?)\b')) AS phrase_payload_hits,
  COUNTIF(LOWER(payload) LIKE '%gist.github.com%') AS gist_payload_hits,
  COUNTIF(LOWER(payload) LIKE '%gist.github.com%' AND REGEXP_CONTAINS(LOWER(payload), r'agent|claude|codex|gpt|bot')) AS gist_agent_payload_hits,
  COUNTIF(REGEXP_CONTAINS(LOWER(body), r'\b(future agents?|next agent|another agents?|other agents?)\b')) AS phrase_body_hits,
  COUNTIF(LOWER(body) LIKE '%gist.github.com%' AND REGEXP_CONTAINS(LOWER(body), r'agent|claude|codex|gpt|bot')) AS gist_agent_body_hits
FROM events
GROUP BY day
ORDER BY day;
