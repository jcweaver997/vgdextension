module vgdextension

@[noinit]
pub struct VisualShaderNodeExpression {
    VisualShaderNodeGroupBase
}

pub fn (r &VisualShaderNodeExpression) set_expression(expression string) {
    classname := StringName.new("VisualShaderNodeExpression")
    fnname := StringName.new("set_expression")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(expression)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeExpression) get_expression() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeExpression")
    fnname := StringName.new("get_expression")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
