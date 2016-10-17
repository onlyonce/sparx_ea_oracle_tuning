-- UC002
drop index IDX$DIAOBJ$ID_OBJID;
create index IDX$DIAOBJ$ID_OBJID on t_diagramobjects (diagram_id, object_id) compress 1 reverse;

-- UC003
drop index IDX$DIAOBJ$OBJID_ID;
create index IDX$DIAOBJ$OBJID_ID on t_diagramobjects (object_id, diagram_id) compress 1 reverse;
