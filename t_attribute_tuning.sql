-- UC001
drop index IDX$ATTR$OBJID_CLASFR;
create index IDX$ATTR$OBJID_CLASFR on T_ATTRIBUTE (OBJECT_ID, CLASSIFIER) compress 2 reverse;

-- UC???
drop index IDX$ATTR$CLASFR_OBJID;
create index IDX$ATTR$CLASFR_OBJID on T_ATTRIBUTE (CLASSIFIER, OBJECT_ID) compress 2 reverse;

-- UC004
drop index IDX$ATTR$OBJID_GUID;
create unique index IDX$ATTR$OBJID_GUID on T_ATTRIBUTE (object_id, ea_guid) compress 1 reverse;

-- EA index
drop index IX_ATTRIBUTE_OBJECTID;
