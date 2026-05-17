-- @operation: export
-- @entity: batch
-- @name: Update Release Type (Optional) Tags
-- @exportedAt: 2026-05-17T22:48:41.221Z
-- @opIds: 9195

-- --- BEGIN op 9195 ( update custom_format "Single Episode" )
DELETE FROM custom_format_tags WHERE custom_format_name = 'Single Episode' AND tag_name = 'Miscellaneous';

insert into "tags" ("name") values ('Release Type (Optional)') on conflict ("name") do nothing;

INSERT INTO custom_format_tags (custom_format_name, tag_name) VALUES ('Single Episode', 'Release Type (Optional)');
-- --- END op 9195
