module vgdextension

@[noinit]
pub struct AnimatableBody2D {
    StaticBody2D
}

pub fn (mut r AnimatableBody2D) set_sync_to_physics(enable bool) {
    classname := StringName.new("AnimatableBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sync_to_physics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimatableBody2D) is_sync_to_physics_enabled() bool {
    mut object_out := false
    classname := StringName.new("AnimatableBody2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_sync_to_physics_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
