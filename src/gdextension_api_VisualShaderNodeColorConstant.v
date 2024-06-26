module vgdextension

@[noinit]
pub struct VisualShaderNodeColorConstant {
    VisualShaderNodeConstant
}

pub fn (r &VisualShaderNodeColorConstant) set_constant(constant Color) {
    classname := StringName.new("VisualShaderNodeColorConstant")
    fnname := StringName.new("set_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeColorConstant) get_constant() Color {
    mut object_out := Color{}
    classname := StringName.new("VisualShaderNodeColorConstant")
    fnname := StringName.new("get_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
