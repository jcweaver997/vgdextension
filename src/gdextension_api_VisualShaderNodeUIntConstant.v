module vgdextension

pub struct VisualShaderNodeUIntConstant {
    VisualShaderNodeConstant
}

pub fn (mut r VisualShaderNodeUIntConstant) set_constant(constant i32) {
    classname := StringName.new("VisualShaderNodeUIntConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeUIntConstant) get_constant() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeUIntConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
