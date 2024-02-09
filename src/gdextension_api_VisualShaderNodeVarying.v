module vgdextension

pub struct VisualShaderNodeVarying {
    VisualShaderNode
}

pub fn (mut r VisualShaderNodeVarying) set_varying_name(name String) {
    classname := StringName.new("VisualShaderNodeVarying")
    defer { classname.deinit() }
    fnname := StringName.new("set_varying_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeVarying) get_varying_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeVarying")
    defer { classname.deinit() }
    fnname := StringName.new("get_varying_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeVarying) set_varying_type(type_name VisualShaderVaryingType) {
    classname := StringName.new("VisualShaderNodeVarying")
    defer { classname.deinit() }
    fnname := StringName.new("set_varying_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3565867981)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeVarying) get_varying_type() VisualShaderVaryingType {
    mut object_out := VisualShaderVaryingType.varying_type_float
    classname := StringName.new("VisualShaderNodeVarying")
    defer { classname.deinit() }
    fnname := StringName.new("get_varying_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 523183580)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
