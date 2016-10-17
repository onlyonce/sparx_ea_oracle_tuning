-- UC001
drop index IDX$OPER$OBJID_CLASFR;
create unique index IDX$OPER$OBJID_CLASFR on T_OPERATION (OBJECT_ID, CLASSIFIER, operationid) compress 2 reverse;

-- UC004
drop index IDX$OPER$OBJID_GUID;
create unique index IDX$OPER$OBJID_GUID on T_OPERATION (object_id, ea_guid) compress 1 reverse;

-- EA index
drop index IX_OPERATION_OBJECTID;
