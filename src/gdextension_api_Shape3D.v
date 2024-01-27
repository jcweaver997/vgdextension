module vgdextension

pub type Shape3D = voidptr

pub fn (mut r Shape3D) set_custom_solver_bias(bias f32) {
    classname := StringName.new("Shape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_solver_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Shape3D) get_custom_solver_bias() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Shape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_solver_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Shape3D) set_margin(margin f32) {
    classname := StringName.new("Shape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Shape3D) get_margin() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Shape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Shape3D) get_debug_mesh() ArrayMesh {
    mut object_out := ArrayMesh(unsafe{nil})
    classname := StringName.new("Shape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_debug_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1605880883)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
