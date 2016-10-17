-- UC001
drop index IDX$OBJ$CHROBJID_OBJID_ALIAS;
create unique index IDX$OBJ$CHROBJID_OBJID_ALIAS on T_OBJECT (to_char(object_id), object_id, alias);

-- UC???
drop index IDX$OBJ$PKG_GUID;
create unique index IDX$OBJ$PKG_GUID on T_OBJECT (package_id, ea_guid) compress 1 reverse;
