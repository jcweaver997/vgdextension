module vgdextension

@[noinit]
pub struct EditorFileSystem {
    Node
}

pub fn (mut r EditorFileSystem) get_filesystem() EditorFileSystemDirectory {
    mut object_out := EditorFileSystemDirectory{}
    classname := StringName.new("EditorFileSystem")
    fnname := StringName.new("get_filesystem")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 842323275)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFileSystem) is_scanning() bool {
    mut object_out := false
    classname := StringName.new("EditorFileSystem")
    fnname := StringName.new("is_scanning")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFileSystem) get_scanning_progress() f64 {
    mut object_out := f64(0)
    classname := StringName.new("EditorFileSystem")
    fnname := StringName.new("get_scanning_progress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorFileSystem) scan() {
    classname := StringName.new("EditorFileSystem")
    fnname := StringName.new("scan")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorFileSystem) scan_sources() {
    classname := StringName.new("EditorFileSystem")
    fnname := StringName.new("scan_sources")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorFileSystem) update_file(path String) {
    classname := StringName.new("EditorFileSystem")
    fnname := StringName.new("update_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EditorFileSystem) get_filesystem_path(path String) EditorFileSystemDirectory {
    mut object_out := EditorFileSystemDirectory{}
    classname := StringName.new("EditorFileSystem")
    fnname := StringName.new("get_filesystem_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3188521125)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorFileSystem) get_file_type(path String) String {
    mut object_out := String{}
    classname := StringName.new("EditorFileSystem")
    fnname := StringName.new("get_file_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EditorFileSystem) reimport_files(files PackedStringArray) {
    classname := StringName.new("EditorFileSystem")
    fnname := StringName.new("reimport_files")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&files)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
