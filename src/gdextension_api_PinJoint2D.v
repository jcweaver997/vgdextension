module vgdextension

@[noinit]
pub struct PinJoint2D {
    Joint2D
}

pub fn (mut r PinJoint2D) set_softness(softness f64) {
    classname := StringName.new("PinJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_softness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&softness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PinJoint2D) get_softness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PinJoint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_softness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
