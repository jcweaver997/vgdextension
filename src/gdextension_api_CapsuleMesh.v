module vgdextension

@[noinit]
pub struct CapsuleMesh {
    PrimitiveMesh
}

pub fn (mut r CapsuleMesh) set_radius(radius f64) {
    classname := StringName.new("CapsuleMesh")
    fnname := StringName.new("set_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radius)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CapsuleMesh) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CapsuleMesh")
    fnname := StringName.new("get_radius")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CapsuleMesh) set_height(height f64) {
    classname := StringName.new("CapsuleMesh")
    fnname := StringName.new("set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CapsuleMesh) get_height() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CapsuleMesh")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CapsuleMesh) set_radial_segments(segments i32) {
    classname := StringName.new("CapsuleMesh")
    fnname := StringName.new("set_radial_segments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&segments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CapsuleMesh) get_radial_segments() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CapsuleMesh")
    fnname := StringName.new("get_radial_segments")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CapsuleMesh) set_rings(rings i32) {
    classname := StringName.new("CapsuleMesh")
    fnname := StringName.new("set_rings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rings)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CapsuleMesh) get_rings() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CapsuleMesh")
    fnname := StringName.new("get_rings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
