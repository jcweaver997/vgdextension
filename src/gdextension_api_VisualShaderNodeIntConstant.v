module vgdextension

@[noinit]
pub struct VisualShaderNodeIntConstant {
    VisualShaderNodeConstant
}

pub fn (r &VisualShaderNodeIntConstant) set_constant(constant i32) {
    classname := StringName.new("VisualShaderNodeIntConstant")
    fnname := StringName.new("set_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeIntConstant) get_constant() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeIntConstant")
    fnname := StringName.new("get_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
