module vgdextension

@[noinit]
pub struct EditorFileSystemImportFormatSupportQuery {
    RefCounted
}

pub interface IEditorFileSystemImportFormatSupportQueryIsActive {
    mut:
    virt_is_active() bool
}

pub fn (r &EditorFileSystemImportFormatSupportQuery) uis_active() bool {
    mut object_out := false
    classname := StringName.new("EditorFileSystemImportFormatSupportQuery")
    fnname := StringName.new("_is_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorFileSystemImportFormatSupportQueryGetFileExtensions {
    mut:
    virt_get_file_extensions() PackedStringArray
}

pub fn (r &EditorFileSystemImportFormatSupportQuery) uget_file_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorFileSystemImportFormatSupportQuery")
    fnname := StringName.new("_get_file_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IEditorFileSystemImportFormatSupportQueryQuery {
    mut:
    virt_query() bool
}

pub fn (r &EditorFileSystemImportFormatSupportQuery) uquery() bool {
    mut object_out := false
    classname := StringName.new("EditorFileSystemImportFormatSupportQuery")
    fnname := StringName.new("_query")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
