module vgdextension

@[noinit]
pub struct Resource {
    RefCounted
}

pub fn (mut r Resource) set_path(path String) {
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("set_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Resource) take_over_path(path String) {
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("take_over_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Resource) get_path() String {
    mut object_out := String{}
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("get_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Resource) set_name(name String) {
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("set_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Resource) get_name() String {
    mut object_out := String{}
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Resource) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("get_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Resource) set_local_to_scene(enable bool) {
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("set_local_to_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Resource) is_local_to_scene() bool {
    mut object_out := false
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("is_local_to_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Resource) get_local_scene() Node {
    mut object_out := Node{}
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("get_local_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Resource) setup_local_to_scene() {
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("setup_local_to_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r Resource) emit_changed() {
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("emit_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &Resource) duplicate(subresources bool) Resource {
    mut object_out := Resource{}
    classname := StringName.new("Resource")
    defer { classname.deinit() }
    fnname := StringName.new("duplicate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 482882304)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&subresources)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
