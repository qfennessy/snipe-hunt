SELECT
  REGEXP_CONTAINS('future agents', r'\\b(future agents?|next agent|another agents?|other agents?)\\b') AS original_phrase,
  REGEXP_CONTAINS('future agents', r'\b(future agents?|next agent|another agents?|other agents?)\b') AS corrected_phrase,
  REGEXP_CONTAINS('https://gist.github.com/example/id', r'gist\\.github\\.com') AS original_gist,
  REGEXP_CONTAINS('https://gist.github.com/example/id', r'gist\.github\.com') AS corrected_gist
