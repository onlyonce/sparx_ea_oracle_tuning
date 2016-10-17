-- UC01: Speed up found starting and ending object relations in manual operation.
drop index IDX$CON$START_END;
create unique index IDX$CON$START_END on T_CONNECTOR (START_OBJECT_ID, END_OBJECT_ID) compress 1  reverse;

-- UC02: Found SQL where using IDX$CON$ENDOBJ_CON_STRTOBJ_DID index reduced or eliminated table access.
drop index IDX$CON$ENDOBJ_CON_STRTOBJ_DID;
create unique index IDX$CON$ENDOBJ_CON_STRTOBJ_DID on T_CONNECTOR (END_OBJECT_ID, CONNECTOR_ID, START_OBJECT_ID, DIAGRAMID);

-- EA index
drop index IX_CONNECTOR_STARTOBJECTID;
drop index IX_CONNECTOR_ENDOBJECTID;
drop index IX_CONNECTOR_ENDOBJIDCONNID;
