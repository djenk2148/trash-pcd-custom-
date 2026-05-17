-- @operation: export
-- @entity: batch
-- @name: Fix EniaHD
-- @exportedAt: 2026-05-17T23:09:05.251Z
-- @opIds: 9205

-- --- BEGIN op 9205 ( update custom_format "Bad Dual Groups" )
UPDATE custom_format_conditions
SET type = 'release_group'
WHERE custom_format_name = 'Bad Dual Groups'
  AND name = 'EniaHD'
  AND type = 'release_title'
  AND arr_type = 'all'
  AND negate = 0
  AND required = 0;

DELETE FROM condition_patterns WHERE custom_format_name = 'Bad Dual Groups' AND condition_name = 'EniaHD' AND regular_expression_name = 'EniaHD';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'EniaHD', 'EniaHD');
-- --- END op 9205
