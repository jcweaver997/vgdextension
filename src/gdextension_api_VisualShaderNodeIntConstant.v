pub type VisualShaderNodeIntConstant = voidptr

pub fn (mut r VisualShaderNodeIntConstant) set_constant(constant i32) {
    classname := StringName.new("VisualShaderNodeIntConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeIntConstant) get_constant() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualShaderNodeIntConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
