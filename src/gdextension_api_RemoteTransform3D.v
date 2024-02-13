module vgdextension

@[noinit]
pub struct RemoteTransform3D {
    Node3D
}

pub fn (mut r RemoteTransform3D) set_remote_node(path NodePath) {
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_remote_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RemoteTransform3D) get_remote_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_remote_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RemoteTransform3D) force_update_cache() {
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("force_update_cache")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r RemoteTransform3D) set_use_global_coordinates(use_global_coordinates bool) {
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_global_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_global_coordinates)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RemoteTransform3D) get_use_global_coordinates() bool {
    mut object_out := false
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_global_coordinates")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RemoteTransform3D) set_update_position(update_remote_position bool) {
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_update_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&update_remote_position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RemoteTransform3D) get_update_position() bool {
    mut object_out := false
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_update_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RemoteTransform3D) set_update_rotation(update_remote_rotation bool) {
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_update_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&update_remote_rotation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RemoteTransform3D) get_update_rotation() bool {
    mut object_out := false
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_update_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RemoteTransform3D) set_update_scale(update_remote_scale bool) {
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_update_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&update_remote_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RemoteTransform3D) get_update_scale() bool {
    mut object_out := false
    classname := StringName.new("RemoteTransform3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_update_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
