-- @operation: export
-- @entity: batch
-- @name: Remove Guyzo from Sonarr side Upscaled CF
-- @exportedAt: 2026-06-30T03:05:38.226Z
-- @opIds: 11455

-- --- BEGIN op 11455 ( update custom_format "Upscaled" )
UPDATE custom_format_conditions
SET arr_type = 'radarr'
WHERE custom_format_name = 'Upscaled'
  AND name = 'GuyZo'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;
-- --- END op 11455
