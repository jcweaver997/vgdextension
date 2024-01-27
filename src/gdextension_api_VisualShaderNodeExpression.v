pub type VisualShaderNodeExpression = voidptr

pub fn (mut r VisualShaderNodeExpression) set_expression(expression String) {
    classname := StringName.new("VisualShaderNodeExpression")
    defer { classname.deinit() }
    fnname := StringName.new("set_expression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeExpression) get_expression() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeExpression")
    defer { classname.deinit() }
    fnname := StringName.new("get_expression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
