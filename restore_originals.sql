-- T_CONNECTOR
drop index IDX$CON$START_END;
drop index IDX$CON$ENDOBJ_CON_STRTOBJ_DID;

CREATE INDEX IX_CONNECTOR_STARTOBJECTID ON T_CONNECTOR (START_OBJECT_ID); 
CREATE INDEX IX_CONNECTOR_ENDOBJECTID ON T_CONNECTOR (END_OBJECT_ID);
CREATE INDEX IX_CONNECTOR_ENDOBJIDCONNID ON T_CONNECTOR (END_OBJECT_ID,CONNECTOR_ID); 


-- T_OPERATIONPARAMS
drop index IDX$OPERP$OBJID_CLASFR;
drop index IDX$OPERP$CLASFR_OBJID;


-- T_OPERATION
drop index IDX$OPER$OBJID_CLASFR;

CREATE INDEX IX_OPERATION_OBJECTID ON T_OPERATION (OBJECT_ID); 


-- T_OBJECT
drop index IDX$OBJ$CHROBJID_OBJID_ALIAS;
drop index IDX$OBJ$PKG_GUID;


-- T_DIAGRAMOBJECTS
drop index IDX$DIAOBJ$ID_OBJID;
drop index IDX$DIAOBJ$OBJID_ID;


-- T_ATTRIBUTE
drop index IDX$ATTR$OBJID_CLASFR;
drop index IDX$ATTR$CLASFR_OBJID;

CREATE INDEX IX_ATTRIBUTE_OBJECTID ON T_ATTRIBUTE (OBJECT_ID);

@gather_statistics.sql