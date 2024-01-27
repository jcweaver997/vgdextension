pub type EditorFileSystemDirectory = voidptr

pub fn (r &EditorFileSystemDirectory) get_subdir_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdir_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileSystemDirectory) get_subdir(idx i32) EditorFileSystemDirectory {
    mut object_out := EditorFileSystemDirectory(unsafe{nil})
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2330964164)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemDirectory) get_file_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemDirectory) get_file(idx i32) String {
    mut object_out := String{}
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemDirectory) get_file_path(idx i32) String {
    mut object_out := String{}
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemDirectory) get_file_type(idx i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemDirectory) get_file_script_class_name(idx i32) String {
    mut object_out := String{}
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_script_class_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemDirectory) get_file_script_class_extends(idx i32) String {
    mut object_out := String{}
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_script_class_extends")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemDirectory) get_file_import_is_valid(idx i32) bool {
    mut object_out := false
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_import_is_valid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileSystemDirectory) get_name() String {
    mut object_out := String{}
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemDirectory) get_path() String {
    mut object_out := String{}
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorFileSystemDirectory) get_parent() EditorFileSystemDirectory {
    mut object_out := EditorFileSystemDirectory(unsafe{nil})
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("get_parent")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 842323275)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemDirectory) find_file_index(name String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("find_file_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &EditorFileSystemDirectory) find_dir_index(name String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("EditorFileSystemDirectory")
    defer { classname.deinit() }
    fnname := StringName.new("find_dir_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
