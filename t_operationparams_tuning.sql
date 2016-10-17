-- UC???
drop index IDX$OPERP$OBJID_CLASFR;
create unique index IDX$OPERP$OBJID_CLASFR on t_operationparams (operationid, CLASSIFIER) reverse;

-- UC001
drop index IDX$OPERP$CLASFR_OBJID;
create unique index IDX$OPERP$CLASFR_OBJID on t_operationparams (CLASSIFIER, operationid) compress 1 reverse;
