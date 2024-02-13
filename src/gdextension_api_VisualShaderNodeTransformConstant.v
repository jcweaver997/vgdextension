module vgdextension

@[noinit]
pub struct VisualShaderNodeTransformConstant {
    VisualShaderNodeConstant
}

pub fn (mut r VisualShaderNodeTransformConstant) set_constant(constant Transform3D) {
    classname := StringName.new("VisualShaderNodeTransformConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2952846383)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeTransformConstant) get_constant() Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("VisualShaderNodeTransformConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3229777777)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
