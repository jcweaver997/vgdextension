module vgdextension

pub struct VisualShaderNodeBooleanConstant {
    VisualShaderNodeConstant
}

pub fn (mut r VisualShaderNodeBooleanConstant) set_constant(constant bool) {
    classname := StringName.new("VisualShaderNodeBooleanConstant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&constant)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeBooleanConstant) get_constant() bool {
    mut object_out := false
    classname := StringName.new("VisualShaderNodeBooleanConstant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
