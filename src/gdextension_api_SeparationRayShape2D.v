module vgdextension

pub struct SeparationRayShape2D {
    Shape2D
}

pub fn (mut r SeparationRayShape2D) set_length(length f64) {
    classname := StringName.new("SeparationRayShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SeparationRayShape2D) get_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SeparationRayShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SeparationRayShape2D) set_slide_on_slope(active bool) {
    classname := StringName.new("SeparationRayShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_slide_on_slope")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&active)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SeparationRayShape2D) get_slide_on_slope() bool {
    mut object_out := false
    classname := StringName.new("SeparationRayShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_slide_on_slope")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
