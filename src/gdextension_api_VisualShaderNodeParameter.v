module vgdextension

pub enum VisualShaderNodeParameterQualifier as i64 {
    qual_none = 0
    qual_global = 1
    qual_instance = 2
    qual_max = 3
}

@[noinit]
pub struct VisualShaderNodeParameter {
    VisualShaderNode
}

pub fn (r &VisualShaderNodeParameter) set_parameter_name(name string) {
    classname := StringName.new("VisualShaderNodeParameter")
    fnname := StringName.new("set_parameter_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeParameter) get_parameter_name() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeParameter")
    fnname := StringName.new("get_parameter_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &VisualShaderNodeParameter) set_qualifier(qualifier VisualShaderNodeParameterQualifier) {
    classname := StringName.new("VisualShaderNodeParameter")
    fnname := StringName.new("set_qualifier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1276489447)
    mut args := unsafe { [1]voidptr{} }
    i64_qualifier := i64(qualifier)
    args[0] = unsafe{voidptr(&i64_qualifier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeParameter) get_qualifier() VisualShaderNodeParameterQualifier {
    mut object_out := i64(VisualShaderNodeParameterQualifier.qual_none)
    classname := StringName.new("VisualShaderNodeParameter")
    fnname := StringName.new("get_qualifier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3558406205)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderNodeParameterQualifier(object_out)}
}
