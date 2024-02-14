module vgdextension

@[noinit]
pub struct CircleShape2D {
    Shape2D
}

pub fn (mut r CircleShape2D) set_radius(radius f64) {
    classname := StringName.new("CircleShape2D")
    fnname := StringName.new("set_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CircleShape2D) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CircleShape2D")
    fnname := StringName.new("get_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
