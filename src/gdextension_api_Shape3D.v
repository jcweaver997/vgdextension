module vgdextension

@[noinit]
pub struct Shape3D {
    Resource
}

pub fn (mut r Shape3D) set_custom_solver_bias(bias f64) {
    classname := StringName.new("Shape3D")
    fnname := StringName.new("set_custom_solver_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Shape3D) get_custom_solver_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Shape3D")
    fnname := StringName.new("get_custom_solver_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Shape3D) set_margin(margin f64) {
    classname := StringName.new("Shape3D")
    fnname := StringName.new("set_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Shape3D) get_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Shape3D")
    fnname := StringName.new("get_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Shape3D) get_debug_mesh() ArrayMesh {
    mut object_out := ArrayMesh{}
    classname := StringName.new("Shape3D")
    fnname := StringName.new("get_debug_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1605880883)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
