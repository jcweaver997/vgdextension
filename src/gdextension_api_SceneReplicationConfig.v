pub type SceneReplicationConfig = voidptr

pub fn (r &SceneReplicationConfig) get_properties() Array {
    mut object_out := Array{}
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("get_properties")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneReplicationConfig) add_property(path NodePath, index i32) {
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("add_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3818401521)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneReplicationConfig) has_property(path NodePath) bool {
    mut object_out := false
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("has_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 861721659)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneReplicationConfig) remove_property(path NodePath) {
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("remove_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneReplicationConfig) property_get_index(path NodePath) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("property_get_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1382022557)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneReplicationConfig) property_get_spawn(path NodePath) bool {
    mut object_out := false
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("property_get_spawn")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3456846888)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneReplicationConfig) property_set_spawn(path NodePath, enabled bool) {
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("property_set_spawn")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3868023870)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneReplicationConfig) property_get_sync(path NodePath) bool {
    mut object_out := false
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("property_get_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3456846888)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneReplicationConfig) property_set_sync(path NodePath, enabled bool) {
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("property_set_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3868023870)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SceneReplicationConfig) property_get_watch(path NodePath) bool {
    mut object_out := false
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("property_get_watch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3456846888)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SceneReplicationConfig) property_set_watch(path NodePath, enabled bool) {
    classname := StringName.new("SceneReplicationConfig")
    defer { classname.deinit() }
    fnname := StringName.new("property_set_watch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3868023870)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
