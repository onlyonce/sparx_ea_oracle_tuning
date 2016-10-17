-- UC01: Found select where if I drop IX_ATTRIBUTE_OBJECTID performance increased because start using one of IDX$ATTR$OBJID_CLASFR, IDX$ATTR$CLASFR_OBJID and eliminate table access.
-- UC02: Found select where using IDX$ATTR$OBJID_CLASFR, IDX$ATTR$CLASFR_OBJID performance increased, because eliminate table access.
drop index IDX$ATTR$OBJID_CLASFR;
create index IDX$ATTR$OBJID_CLASFR on T_ATTRIBUTE (OBJECT_ID, CLASSIFIER) compress 2 reverse;
drop index IDX$ATTR$CLASFR_OBJID;
create index IDX$ATTR$CLASFR_OBJID on T_ATTRIBUTE (CLASSIFIER, OBJECT_ID) compress 2 reverse;

-- EA index
drop index IX_ATTRIBUTE_OBJECTID;
