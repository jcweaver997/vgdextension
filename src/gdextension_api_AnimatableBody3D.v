pub type AnimatableBody3D = voidptr

pub fn (mut r AnimatableBody3D) set_sync_to_physics(enable bool) {
    classname := StringName.new("AnimatableBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sync_to_physics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimatableBody3D) is_sync_to_physics_enabled() bool {
    mut object_out := false
    classname := StringName.new("AnimatableBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_sync_to_physics_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
