-- @operation: export
-- @entity: batch
-- @name: Update more tags
-- @exportedAt: 2026-05-20T00:14:43.832Z
-- @opIds: 10572, 10573, 10574, 10575, 10576

-- --- BEGIN op 10572 ( update custom_format "Black and White Editions" )
insert into "tags" ("name") values ('Unwanted Formats') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Black and White Editions', 'Unwanted Formats');
-- --- END op 10572

-- --- BEGIN op 10573 ( update custom_format "Line/Mic Dubbed" )
insert into "tags" ("name") values ('Unwanted Formats') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Line/Mic Dubbed', 'Unwanted Formats');
-- --- END op 10573

-- --- BEGIN op 10574 ( update custom_format "No-RlsGroup" )
insert into "tags" ("name") values ('Unwanted Formats') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('No-RlsGroup', 'Unwanted Formats');
-- --- END op 10574

-- --- BEGIN op 10575 ( update custom_format "Scene" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Scene' AND tag_name = 'Release Type (Optional)';

insert into "tags" ("name") values ('Unwanted Formats') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Scene', 'Unwanted Formats');
-- --- END op 10575

-- --- BEGIN op 10576 ( update custom_format "German DL (undefined)" )
insert into "tags" ("name") values ('Language Profiles') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('German DL (undefined)', 'Language Profiles');
-- --- END op 10576
