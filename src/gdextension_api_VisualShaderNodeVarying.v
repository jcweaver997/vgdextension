module vgdextension

@[noinit]
pub struct VisualShaderNodeVarying {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeVarying) set_varying_name(name String) {
    classname := StringName.new("VisualShaderNodeVarying")
    fnname := StringName.new("set_varying_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeVarying) get_varying_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeVarying")
    fnname := StringName.new("get_varying_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r VisualShaderNodeVarying) set_varying_type(type_name VisualShaderVaryingType) {
    classname := StringName.new("VisualShaderNodeVarying")
    fnname := StringName.new("set_varying_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3565867981)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeVarying) get_varying_type() VisualShaderVaryingType {
    mut object_out := i64(VisualShaderVaryingType.varying_type_float)
    classname := StringName.new("VisualShaderNodeVarying")
    fnname := StringName.new("get_varying_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 523183580)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{VisualShaderVaryingType(object_out)}
}
