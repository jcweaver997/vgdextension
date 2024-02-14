module vgdextension

@[noinit]
pub struct VisualShaderNodeParameterRef {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeParameterRef) set_parameter_name(name String) {
    classname := StringName.new("VisualShaderNodeParameterRef")
    fnname := StringName.new("set_parameter_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeParameterRef) get_parameter_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeParameterRef")
    fnname := StringName.new("get_parameter_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
