module vgdextension

@[noinit]
pub struct AnimatableBody3D {
    StaticBody3D
}

pub fn (mut r AnimatableBody3D) set_sync_to_physics(enable bool) {
    classname := StringName.new("AnimatableBody3D")
    fnname := StringName.new("set_sync_to_physics")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimatableBody3D) is_sync_to_physics_enabled() bool {
    mut object_out := false
    classname := StringName.new("AnimatableBody3D")
    fnname := StringName.new("is_sync_to_physics_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
