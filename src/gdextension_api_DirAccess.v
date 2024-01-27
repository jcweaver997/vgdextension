module vgdextension

pub type DirAccess = voidptr

pub fn DirAccess.open(path String) DirAccess {
    mut object_out := DirAccess(unsafe{nil})
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("open")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1923528528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn DirAccess.get_open_error() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_open_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) list_dir_begin() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("list_dir_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2018049411)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) get_next() String {
    mut object_out := String{}
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_next")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &DirAccess) current_is_dir() bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("current_is_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) list_dir_end() {
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("list_dir_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r DirAccess) get_files() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_files")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn DirAccess.get_files_at(path String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_files_at")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) get_directories() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_directories")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn DirAccess.get_directories_at(path String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_directories_at")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn DirAccess.get_drive_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_drive_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn DirAccess.get_drive_name(idx i32) String {
    mut object_out := String{}
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_drive_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) get_current_drive() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_drive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) change_dir(to_dir String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("change_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&to_dir)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &DirAccess) get_current_dir(include_drive bool) String {
    mut object_out := String{}
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1287308131)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&include_drive)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) make_dir(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("make_dir")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn DirAccess.make_dir_absolute(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("make_dir_absolute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) make_dir_recursive(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("make_dir_recursive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn DirAccess.make_dir_recursive_absolute(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("make_dir_recursive_absolute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) file_exists(path String) bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("file_exists")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) dir_exists(path String) bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("dir_exists")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn DirAccess.dir_exists_absolute(path String) bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("dir_exists_absolute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) get_space_left() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_space_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) copy(from String, to String, chmod_flags i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("copy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 198434953)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&chmod_flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn DirAccess.copy_absolute(from String, to String, chmod_flags i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("copy_absolute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 198434953)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&chmod_flags)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) rename(from String, to String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("rename")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn DirAccess.rename_absolute(from String, to String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("rename_absolute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) remove(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("remove")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn DirAccess.remove_absolute(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("remove_absolute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) set_include_navigational(enable bool) {
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("set_include_navigational")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &DirAccess) get_include_navigational() bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_include_navigational")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r DirAccess) set_include_hidden(enable bool) {
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("set_include_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &DirAccess) get_include_hidden() bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_include_hidden")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
