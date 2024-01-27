module vgdextension

pub type VisualShaderNodeVarying = voidptr

pub fn (mut r VisualShaderNodeVarying) set_varying_name(name String) {
    classname := StringName.new("VisualShaderNodeVarying")
    defer { classname.deinit() }
    fnname := StringName.new("set_varying_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeVarying) get_varying_name() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeVarying")
    defer { classname.deinit() }
    fnname := StringName.new("get_varying_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeVarying) set_varying_type(type_name VisualShaderVaryingType) {
    classname := StringName.new("VisualShaderNodeVarying")
    defer { classname.deinit() }
    fnname := StringName.new("set_varying_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3565867981)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeVarying) get_varying_type() VisualShaderVaryingType {
    mut object_out := VisualShaderVaryingType.varying_type_float
    classname := StringName.new("VisualShaderNodeVarying")
    defer { classname.deinit() }
    fnname := StringName.new("get_varying_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 523183580)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
