module vgdextension

@[noinit]
pub struct CapsuleShape2D {
    Shape2D
}

pub fn (mut r CapsuleShape2D) set_radius(radius f64) {
    classname := StringName.new("CapsuleShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CapsuleShape2D) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CapsuleShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CapsuleShape2D) set_height(height f64) {
    classname := StringName.new("CapsuleShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CapsuleShape2D) get_height() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CapsuleShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
