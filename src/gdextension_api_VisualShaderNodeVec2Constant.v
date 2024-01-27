pub type VisualShaderNodeVec2Constant = voidptr

pub fn (mut r VisualShaderNodeVec2Constant) set_constant(constant Vector2) {
    classname := StringName.new("VisualShaderNodeVec2Constant")
    defer { classname.deinit() }
    fnname := StringName.new("set_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeVec2Constant) get_constant() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("VisualShaderNodeVec2Constant")
    defer { classname.deinit() }
    fnname := StringName.new("get_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
