-- @operation: export
-- @entity: batch
-- @name: Add RlsGrp CYPHER, MLH, and XiQUEXiQUE to the Bad Dual Groups
-- @exportedAt: 2026-06-14T21:00:46.215Z
-- @opIds: 10987, 10988, 10989, 10990, 10991, 10992, 11005, 11006, 11007

-- --- BEGIN op 10987 ( create regular_expression "CYPHER" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('CYPHER', '\b(\$tore-Chill)\b', NULL, NULL);
-- --- END op 10987

-- --- BEGIN op 10988 ( update regular_expression "CYPHER" )
update "regular_expressions" set "pattern" = '^(CYPHER)$' where "name" = 'CYPHER' and "pattern" = '\b(\$tore-Chill)\b';
-- --- END op 10988

-- --- BEGIN op 10989 ( create regular_expression "MLH" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('MLH', '^(CYPHER)$', NULL, NULL);
-- --- END op 10989

-- --- BEGIN op 10990 ( update regular_expression "MLH" )
update "regular_expressions" set "pattern" = '^(MLH)$' where "name" = 'MLH' and "pattern" = '^(CYPHER)$';
-- --- END op 10990

-- --- BEGIN op 10991 ( create regular_expression "XiQUEXiQUE" )
insert into "regular_expressions" ("name", "pattern", "description", "regex101_id") values ('XiQUEXiQUE', '^(MLH)$', NULL, NULL);
-- --- END op 10991

-- --- BEGIN op 10992 ( update regular_expression "XiQUEXiQUE" )
update "regular_expressions" set "pattern" = '^(XiQUEXiQUE)$' where "name" = 'XiQUEXiQUE' and "pattern" = '^(MLH)$';
-- --- END op 10992

-- --- BEGIN op 11005 ( update custom_format "Bad Dual Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'CYPHER', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'CYPHER', 'CYPHER');
-- --- END op 11005

-- --- BEGIN op 11006 ( update custom_format "Bad Dual Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'MLH', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'MLH', 'MLH');
-- --- END op 11006

-- --- BEGIN op 11007 ( update custom_format "Bad Dual Groups" )
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('Bad Dual Groups', 'XiQUEXiQUE', 'release_group', 'all', 0, 0);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Bad Dual Groups', 'XiQUEXiQUE', 'XiQUEXiQUE');
-- --- END op 11007
