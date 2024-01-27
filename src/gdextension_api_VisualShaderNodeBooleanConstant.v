module vgdextension

pub type VisualShaderNodeBooleanConstant = voidptr

pub fn (mut r VisualShaderNodeBooleanConstant) set_constant(constant bool) {
    classname := StringName.new("VisualShaderNodeBooleanConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeBooleanConstant) get_constant() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeBooleanConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
