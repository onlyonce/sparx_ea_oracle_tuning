-- UC001
drop index IDX$OBJ$CHROBJID_OBJID_ALIAS;
create unique index IDX$OBJ$CHROBJID_OBJID_ALIAS on T_OBJECT (to_char(object_id), object_id, alias) reverse;

-- UC???
drop index IDX$OBJ$PKG_GUID;
create unique index IDX$OBJ$PKG_GUID on T_OBJECT (package_id, ea_guid) compress 1 reverse;

-- UC004
drop index IDX$OBJ$OBJID_GUID;
create unique index IDX$OBJ$OBJID_GUID on T_OBJECT (object_id, ea_guid) reverse;
