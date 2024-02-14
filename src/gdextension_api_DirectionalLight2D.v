module vgdextension

@[noinit]
pub struct DirectionalLight2D {
    Light2D
}

pub fn (mut r DirectionalLight2D) set_max_distance(pixels f64) {
    classname := StringName.new("DirectionalLight2D")
    fnname := StringName.new("set_max_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pixels)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &DirectionalLight2D) get_max_distance() f64 {
    mut object_out := f64(0)
    classname := StringName.new("DirectionalLight2D")
    fnname := StringName.new("get_max_distance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
