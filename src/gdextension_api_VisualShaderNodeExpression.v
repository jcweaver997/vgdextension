module vgdextension

pub struct VisualShaderNodeExpression {
    VisualShaderNodeGroupBase
}

pub fn (mut r VisualShaderNodeExpression) set_expression(expression String) {
    classname := StringName.new("VisualShaderNodeExpression")
    defer { classname.deinit() }
    fnname := StringName.new("set_expression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&expression)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeExpression) get_expression() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeExpression")
    defer { classname.deinit() }
    fnname := StringName.new("get_expression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
