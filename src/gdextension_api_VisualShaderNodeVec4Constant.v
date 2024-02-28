module vgdextension

@[noinit]
pub struct VisualShaderNodeVec4Constant {
    VisualShaderNodeConstant
}

pub fn (r &VisualShaderNodeVec4Constant) set_constant(constant Quaternion) {
    classname := StringName.new("VisualShaderNodeVec4Constant")
    fnname := StringName.new("set_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1727505552)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeVec4Constant) get_constant() Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("VisualShaderNodeVec4Constant")
    fnname := StringName.new("get_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
