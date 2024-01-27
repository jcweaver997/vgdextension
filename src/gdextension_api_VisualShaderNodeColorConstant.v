module vgdextension

pub type VisualShaderNodeColorConstant = voidptr

pub fn (mut r VisualShaderNodeColorConstant) set_constant(constant Color) {
    classname := StringName.new("VisualShaderNodeColorConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeColorConstant) get_constant() Color {
    mut object_out := Color{}
    classname := StringName.new("VisualShaderNodeColorConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
