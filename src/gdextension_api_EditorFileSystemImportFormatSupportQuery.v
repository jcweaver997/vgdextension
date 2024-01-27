module vgdextension

pub type EditorFileSystemImportFormatSupportQuery = voidptr

pub fn (r &EditorFileSystemImportFormatSupportQuery) uis_active() bool {
    mut object_out := false
    classname := StringName.new("EditorFileSystemImportFormatSupportQuery")
    defer { classname.deinit() }
    fnname := StringName.new("_is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemImportFormatSupportQuery) uget_file_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorFileSystemImportFormatSupportQuery")
    defer { classname.deinit() }
    fnname := StringName.new("_get_file_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemImportFormatSupportQuery) uquery() bool {
    mut object_out := false
    classname := StringName.new("EditorFileSystemImportFormatSupportQuery")
    defer { classname.deinit() }
    fnname := StringName.new("_query")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
