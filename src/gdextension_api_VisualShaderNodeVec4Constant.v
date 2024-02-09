module vgdextension

pub struct VisualShaderNodeVec4Constant {
    VisualShaderNodeConstant
}

pub fn (mut r VisualShaderNodeVec4Constant) set_constant(constant Quaternion) {
    classname := StringName.new("VisualShaderNodeVec4Constant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1727505552)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeVec4Constant) get_constant() Quaternion {
    mut object_out := Quaternion{}
    classname := StringName.new("VisualShaderNodeVec4Constant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1222331677)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
