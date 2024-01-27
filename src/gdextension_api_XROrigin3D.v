module vgdextension

pub type XROrigin3D = voidptr

pub fn (mut r XROrigin3D) set_world_scale(world_scale f32) {
    classname := StringName.new("XROrigin3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_world_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XROrigin3D) get_world_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("XROrigin3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_world_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r XROrigin3D) set_current(enabled bool) {
    classname := StringName.new("XROrigin3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &XROrigin3D) is_current() bool {
    mut object_out := false
    classname := StringName.new("XROrigin3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
