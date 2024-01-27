module vgdextension

pub type VisualShaderNodeTransformConstant = voidptr

pub fn (mut r VisualShaderNodeTransformConstant) set_constant(constant Transform3D) {
    classname := StringName.new("VisualShaderNodeTransformConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeTransformConstant) get_constant() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("VisualShaderNodeTransformConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
