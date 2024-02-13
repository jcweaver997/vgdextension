module vgdextension

@[noinit]
pub struct VisualShaderNodeVec2Constant {
    VisualShaderNodeConstant
}

pub fn (mut r VisualShaderNodeVec2Constant) set_constant(constant Vector2) {
    classname := StringName.new("VisualShaderNodeVec2Constant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeVec2Constant) get_constant() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("VisualShaderNodeVec2Constant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
