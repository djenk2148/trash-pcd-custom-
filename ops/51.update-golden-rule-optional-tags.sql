-- @operation: export
-- @entity: batch
-- @name: Update Golden Rule (Optional) Tags
-- @exportedAt: 2026-05-17T22:44:08.973Z
-- @opIds: 9184, 9185

-- --- BEGIN op 9184 ( update custom_format "x265 (HD)" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'x265 (HD)' AND tag_name = 'Unwanted Formats';

insert into "tags" ("name") values ('Golden Rule (Optional)') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x265 (HD)', 'Golden Rule (Optional)');
-- --- END op 9184

-- --- BEGIN op 9185 ( update custom_format "x265 (no HDR/DV)" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'x265 (no HDR/DV)' AND tag_name = 'Miscellaneous';

insert into "tags" ("name") values ('Golden Rule (Optional)') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('x265 (no HDR/DV)', 'Golden Rule (Optional)');
-- --- END op 9185
