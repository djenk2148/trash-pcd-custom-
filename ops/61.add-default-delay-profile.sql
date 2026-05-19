-- @operation: export
-- @entity: batch
-- @name: Add Default Delay Profile
-- @exportedAt: 2026-05-19T22:28:10.006Z
-- @opIds: 10561

-- --- BEGIN op 10561 ( create delay_profile "Default" )
insert into "delay_profiles" ("name", "preferred_protocol", "usenet_delay", "torrent_delay", "bypass_if_highest_quality", "bypass_if_above_custom_format_score", "minimum_custom_format_score") values ('Default', 'prefer_torrent', 0, 0, 0, 0, NULL);
-- --- END op 10561
