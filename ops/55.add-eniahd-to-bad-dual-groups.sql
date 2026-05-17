-- @operation: export
-- @entity: batch
-- @name: Add EniaHD to Bad Dual Groups
-- @exportedAt: 2026-05-17T22:59:35.809Z
-- @opIds: 9199, 9200, 9201

-- --- BEGIN op 9199 ( create regular_expression "EniaHD" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('EniaHD', '\b(\$tore-Chill)\b', NULL, NULL);
-- --- END op 9199

-- --- BEGIN op 9200 ( update regular_expression "EniaHD" )
update "regular_expressions" set "pattern" = '^(EniaHD)$' where "name" = 'EniaHD' and "pattern" = '\b(\$tore-Chill)\b';
-- --- END op 9200

-- --- BEGIN op 9201 ( update custom_format "Bad Dual Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'EniaHD', 'release_title', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'EniaHD', 'EniaHD');
-- --- END op 9201
