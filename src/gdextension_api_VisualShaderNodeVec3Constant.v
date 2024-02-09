module vgdextension

pub struct VisualShaderNodeVec3Constant {
    VisualShaderNodeConstant
}

pub fn (mut r VisualShaderNodeVec3Constant) set_constant(constant Vector3) {
    classname := StringName.new("VisualShaderNodeVec3Constant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeVec3Constant) get_constant() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("VisualShaderNodeVec3Constant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
