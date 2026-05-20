-- @operation: export
-- @entity: batch
-- @name: Delete Unreferenced
-- @exportedAt: 2026-05-20T00:15:31.880Z
-- @opIds: 10578, 10579

-- --- BEGIN op 10578 ( delete regular_expression "Not Subbed" )
delete from "regular_expressions" where "name" = 'Not Subbed';
-- --- END op 10578

-- --- BEGIN op 10579 ( delete regular_expression "Sicario" )
delete from "regular_expressions" where "name" = 'Sicario';
-- --- END op 10579
