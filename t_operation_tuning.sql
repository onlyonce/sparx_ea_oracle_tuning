-- UC01: Found SQL where using IDX$OPER$OBJID_CLASFR can be eliminate table access.
-- UC02: Found SQL where not using IX_OPERATION_OBJECTID index and using IDX$OPER$OBJID_CLASFR can be eliminate table access.
drop index IDX$OPER$OBJID_CLASFR;
create unique index IDX$OPER$OBJID_CLASFR on T_OPERATION (OBJECT_ID, CLASSIFIER, operationid) compress 2 reverse;

-- EA index
drop index IX_OPERATION_OBJECTID;
