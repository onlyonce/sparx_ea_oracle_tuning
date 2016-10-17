-- UC001: Found SQL where classifier_id = to_char(t_object.object_id)
-- UC002: Found SQL where select only object_id and alias
-- UC003: Found SQL where select only package_id and ea_guid
drop index IDX$OBJ$CHROBJID_OBJID_ALIAS;
create unique index IDX$OBJ$CHROBJID_OBJID_ALIAS on T_OBJECT (to_char(object_id), object_id, alias);
drop index IDX$OBJ$PKG_GUID;
create unique index IDX$OBJ$PKG_GUID on T_OBJECT (package_id, ea_guid) compress 1 reverse;
