-- @operation: export
-- @entity: batch
-- @name: Fix Not Original
-- @exportedAt: 2026-05-20T00:02:36.300Z
-- @opIds: 10567

-- --- BEGIN op 10567 ( update custom_format "Language: Not Original" )
UPDATE custom_format_conditions
SET arr_type = 'sonarr'
WHERE custom_format_name = 'Language: Not Original'
  AND name = 'Not Original Language'
  AND type = 'language'
  AND arr_type = 'radarr'
  AND negate = 1
  AND required = 0;
-- --- END op 10567
