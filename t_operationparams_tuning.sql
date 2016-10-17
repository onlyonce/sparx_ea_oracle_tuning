-- UC???
drop index IDX$OPERP$OBJID_CLASFR;
create unique index IDX$OPERP$OBJID_CLASFR on T_OPERATIONPARAMS (operationid, CLASSIFIER) reverse;

-- UC001
drop index IDX$OPERP$CLASFR_OBJID;
create unique index IDX$OPERP$CLASFR_OBJID on T_OPERATIONPARAMS (CLASSIFIER, operationid) compress 1 reverse;

-- UC004
drop index IDX$OPERP$OPERID_GUID;
create unique index IDX$OPER$OPERID_GUID on T_OPERATIONPARAMS (operationid, ea_guid) compress 1 reverse;
