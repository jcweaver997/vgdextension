module vgdextension

@[noinit]
pub struct DirAccess {
    RefCounted
}

pub fn DirAccess.open(path string) DirAccess {
    mut object_out := DirAccess{}
    classname := StringName.new("DirAccess")
    fnname := StringName.new("open")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1923528528)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn DirAccess.get_open_error() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_open_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r DirAccess) list_dir_begin() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("list_dir_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2610976713)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r DirAccess) get_next() string {
    mut object_out := String{}
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_next")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &DirAccess) current_is_dir() bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    fnname := StringName.new("current_is_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DirAccess) list_dir_end() {
    classname := StringName.new("DirAccess")
    fnname := StringName.new("list_dir_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r DirAccess) get_files() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_files")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn DirAccess.get_files_at(path string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_files_at")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DirAccess) get_directories() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_directories")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn DirAccess.get_directories_at(path string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_directories_at")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3538744774)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn DirAccess.get_drive_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_drive_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn DirAccess.get_drive_name(idx i32) string {
    mut object_out := String{}
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_drive_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 990163283)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r DirAccess) get_current_drive() i32 {
    mut object_out := i32(0)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_current_drive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DirAccess) change_dir(to_dir string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("change_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(to_dir)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &DirAccess) get_current_dir(include_drive bool) string {
    mut object_out := String{}
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_current_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1287308131)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&include_drive)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r DirAccess) make_dir(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("make_dir")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn DirAccess.make_dir_absolute(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("make_dir_absolute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r DirAccess) make_dir_recursive(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("make_dir_recursive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn DirAccess.make_dir_recursive_absolute(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("make_dir_recursive_absolute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r DirAccess) file_exists(path string) bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    fnname := StringName.new("file_exists")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DirAccess) dir_exists(path string) bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    fnname := StringName.new("dir_exists")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn DirAccess.dir_exists_absolute(path string) bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    fnname := StringName.new("dir_exists_absolute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DirAccess) get_space_left() u64 {
    mut object_out := u64(0)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_space_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DirAccess) copy(from string, to string, chmod_flags i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("copy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1063198817)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(to)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&chmod_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn DirAccess.copy_absolute(from string, to string, chmod_flags i32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("copy_absolute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1063198817)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(to)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&chmod_flags)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r DirAccess) rename(from string, to string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("rename")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(to)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn DirAccess.rename_absolute(from string, to string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("rename_absolute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(from)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(to)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r DirAccess) remove(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("remove")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn DirAccess.remove_absolute(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("DirAccess")
    fnname := StringName.new("remove_absolute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r DirAccess) set_include_navigational(enable bool) {
    classname := StringName.new("DirAccess")
    fnname := StringName.new("set_include_navigational")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DirAccess) get_include_navigational() bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_include_navigational")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r DirAccess) set_include_hidden(enable bool) {
    classname := StringName.new("DirAccess")
    fnname := StringName.new("set_include_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DirAccess) get_include_hidden() bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    fnname := StringName.new("get_include_hidden")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &DirAccess) is_case_sensitive(path string) bool {
    mut object_out := false
    classname := StringName.new("DirAccess")
    fnname := StringName.new("is_case_sensitive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
