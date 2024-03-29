module vgdextension

@[noinit]
pub struct XROrigin3D {
    Node3D
}

pub fn (r &XROrigin3D) set_world_scale(world_scale f64) {
    classname := StringName.new("XROrigin3D")
    fnname := StringName.new("set_world_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&world_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XROrigin3D) get_world_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("XROrigin3D")
    fnname := StringName.new("get_world_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &XROrigin3D) set_current(enabled bool) {
    classname := StringName.new("XROrigin3D")
    fnname := StringName.new("set_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &XROrigin3D) is_current() bool {
    mut object_out := false
    classname := StringName.new("XROrigin3D")
    fnname := StringName.new("is_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
