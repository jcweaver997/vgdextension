module vgdextension

pub struct OpenXRIPBinding {
    Resource
}

pub fn (mut r OpenXRIPBinding) set_action(action OpenXRAction) {
    classname := StringName.new("OpenXRIPBinding")
    defer { classname.deinit() }
    fnname := StringName.new("set_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 349361333)
    mut args := unsafe { [1]voidptr{} }
    args[0] = action.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRIPBinding) get_action() OpenXRAction {
    mut object_out := OpenXRAction{}
    classname := StringName.new("OpenXRIPBinding")
    defer { classname.deinit() }
    fnname := StringName.new("get_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4072409085)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRIPBinding) get_path_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OpenXRIPBinding")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRIPBinding) set_paths(paths PackedStringArray) {
    classname := StringName.new("OpenXRIPBinding")
    defer { classname.deinit() }
    fnname := StringName.new("set_paths")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&paths)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRIPBinding) get_paths() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OpenXRIPBinding")
    defer { classname.deinit() }
    fnname := StringName.new("get_paths")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRIPBinding) has_path(path String) bool {
    mut object_out := false
    classname := StringName.new("OpenXRIPBinding")
    defer { classname.deinit() }
    fnname := StringName.new("has_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRIPBinding) add_path(path String) {
    classname := StringName.new("OpenXRIPBinding")
    defer { classname.deinit() }
    fnname := StringName.new("add_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r OpenXRIPBinding) remove_path(path String) {
    classname := StringName.new("OpenXRIPBinding")
    defer { classname.deinit() }
    fnname := StringName.new("remove_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
