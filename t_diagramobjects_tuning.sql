-- UC01: Found SQL where using IDX$DIAOBJ$ID_OBJID index, can be eliminate table access.
drop index IDX$DIAOBJ$ID_OBJID;
create index IDX$DIAOBJ$ID_OBJID on t_diagramobjects (diagram_id, object_id) compress 1 reverse;
