-- @operation: export
-- @entity: batch
-- @name: Delete Duplicate Regex
-- @exportedAt: 2026-06-14T20:38:55.196Z
-- @opIds: 10940, 10941, 10942, 10943, 10944, 10945

-- --- BEGIN op 10940 ( update custom_format "WEB Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'WEB Tier 02'
	  AND name = 'SIGMA'
	  AND type = 'release_group'
	  AND arr_type = 'sonarr'
	  AND negate = 0
	  AND required = 0;
-- --- END op 10940

-- --- BEGIN op 10941 ( update custom_format "WEB Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('WEB Tier 02', 'SiGMA', 'release_group', 'sonarr', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('WEB Tier 02', 'SiGMA', 'SiGMA');
-- --- END op 10941

-- --- BEGIN op 10942 ( delete regular_expression "SIGMA" )
delete from "regular_expressions" where "name" = 'SIGMA';
-- --- END op 10942

-- --- BEGIN op 10943 ( update custom_format "HD Bluray Tier 02" )
DELETE FROM custom_format_conditions
	WHERE custom_format_name = 'HD Bluray Tier 02'
	  AND name = 'sbR'
	  AND type = 'release_group'
	  AND arr_type = 'all'
	  AND negate = 0
	  AND required = 0;
-- --- END op 10943

-- --- BEGIN op 10944 ( update custom_format "HD Bluray Tier 02" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('HD Bluray Tier 02', 'SbR', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HD Bluray Tier 02', 'SbR', 'SbR');
-- --- END op 10944

-- --- BEGIN op 10945 ( delete regular_expression "sbR" )
delete from "regular_expressions" where "name" = 'sbR';
-- --- END op 10945
