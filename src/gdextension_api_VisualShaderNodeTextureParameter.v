module vgdextension

pub enum VisualShaderNodeTextureParameterTextureType {
    type_data = 0
    type_color = 1
    type_normal_map = 2
    type_anisotropy = 3
    type_max = 4
}

pub enum VisualShaderNodeTextureParameterColorDefault {
    color_default_white = 0
    color_default_black = 1
    color_default_transparent = 2
    color_default_max = 3
}

pub enum VisualShaderNodeTextureParameterTextureFilter {
    filter_default = 0
    filter_nearest = 1
    filter_linear = 2
    filter_nearest_mipmap = 3
    filter_linear_mipmap = 4
    filter_nearest_mipmap_anisotropic = 5
    filter_linear_mipmap_anisotropic = 6
    filter_max = 7
}

pub enum VisualShaderNodeTextureParameterTextureRepeat {
    repeat_default = 0
    repeat_enabled = 1
    repeat_disabled = 2
    repeat_max = 3
}

pub enum VisualShaderNodeTextureParameterTextureSource {
    source_none = 0
    source_screen = 1
    source_depth = 2
    source_normal_roughness = 3
    source_max = 4
}

@[noinit]
pub struct VisualShaderNodeTextureParameter {
    VisualShaderNodeParameter
}

pub fn (mut r VisualShaderNodeTextureParameter) set_texture_type(type_name VisualShaderNodeTextureParameterTextureType) {
    classname := StringName.new("VisualShaderNodeTextureParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2227296876)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeTextureParameter) get_texture_type() VisualShaderNodeTextureParameterTextureType {
    mut object_out := VisualShaderNodeTextureParameterTextureType.type_data
    classname := StringName.new("VisualShaderNodeTextureParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 367922070)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeTextureParameter) set_color_default(color VisualShaderNodeTextureParameterColorDefault) {
    classname := StringName.new("VisualShaderNodeTextureParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_color_default")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4217624432)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeTextureParameter) get_color_default() VisualShaderNodeTextureParameterColorDefault {
    mut object_out := VisualShaderNodeTextureParameterColorDefault.color_default_white
    classname := StringName.new("VisualShaderNodeTextureParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_color_default")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3837060134)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeTextureParameter) set_texture_filter(filter VisualShaderNodeTextureParameterTextureFilter) {
    classname := StringName.new("VisualShaderNodeTextureParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2147684752)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeTextureParameter) get_texture_filter() VisualShaderNodeTextureParameterTextureFilter {
    mut object_out := VisualShaderNodeTextureParameterTextureFilter.filter_default
    classname := StringName.new("VisualShaderNodeTextureParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4184490817)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeTextureParameter) set_texture_repeat(repeat VisualShaderNodeTextureParameterTextureRepeat) {
    classname := StringName.new("VisualShaderNodeTextureParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2036143070)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&repeat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeTextureParameter) get_texture_repeat() VisualShaderNodeTextureParameterTextureRepeat {
    mut object_out := VisualShaderNodeTextureParameterTextureRepeat.repeat_default
    classname := StringName.new("VisualShaderNodeTextureParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1690132794)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeTextureParameter) set_texture_source(source VisualShaderNodeTextureParameterTextureSource) {
    classname := StringName.new("VisualShaderNodeTextureParameter")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1212687372)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&source)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeTextureParameter) get_texture_source() VisualShaderNodeTextureParameterTextureSource {
    mut object_out := VisualShaderNodeTextureParameterTextureSource.source_none
    classname := StringName.new("VisualShaderNodeTextureParameter")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_source")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2039092262)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
