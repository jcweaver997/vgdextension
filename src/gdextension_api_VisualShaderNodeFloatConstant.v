module vgdextension

pub type VisualShaderNodeFloatConstant = voidptr

pub fn (mut r VisualShaderNodeFloatConstant) set_constant(constant f32) {
    classname := StringName.new("VisualShaderNodeFloatConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeFloatConstant) get_constant() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VisualShaderNodeFloatConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
