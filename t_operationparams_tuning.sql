-- UC01: Found SQL where using IDX$OPERP$OBJID_CLASFR or IDX$OPERP$CLASFR_OBJID index, can be eliminate table access.
drop index IDX$OPERP$OBJID_CLASFR;
create unique index IDX$OPERP$OBJID_CLASFR on t_operationparams (operationid, CLASSIFIER) reverse;
drop index IDX$OPERP$CLASFR_OBJID;
create unique index IDX$OPERP$CLASFR_OBJID on t_operationparams (CLASSIFIER, operationid) compress 1 reverse;
