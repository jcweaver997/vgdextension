module vgdextension

pub enum GeometryInstance3DShadowCastingSetting as i64 {
    shadow_casting_setting_off = 0
    shadow_casting_setting_on = 1
    shadow_casting_setting_double_sided = 2
    shadow_casting_setting_shadows_only = 3
}

pub enum GeometryInstance3DGIMode as i64 {
    gi_mode_disabled = 0
    gi_mode_static = 1
    gi_mode_dynamic = 2
}

pub enum GeometryInstance3DLightmapScale as i64 {
    lightmap_scale_1x = 0
    lightmap_scale_2x = 1
    lightmap_scale_4x = 2
    lightmap_scale_8x = 3
    lightmap_scale_max = 4
}

pub enum GeometryInstance3DVisibilityRangeFadeMode as i64 {
    visibility_range_fade_disabled = 0
    visibility_range_fade_self = 1
    visibility_range_fade_dependencies = 2
}

@[noinit]
pub struct GeometryInstance3D {
    VisualInstance3D
}

pub fn (r &GeometryInstance3D) set_material_override(material Material) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_material_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_material_override() Material {
    mut object_out := Material{}
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_material_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_material_overlay(material Material) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_material_overlay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_material_overlay() Material {
    mut object_out := Material{}
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_material_overlay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_cast_shadows_setting(shadow_casting_setting GeometryInstance3DShadowCastingSetting) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_cast_shadows_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 856677339)
    mut args := unsafe { [1]voidptr{} }
    i64_shadow_casting_setting := i64(shadow_casting_setting)
    args[0] = unsafe{voidptr(&i64_shadow_casting_setting)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_cast_shadows_setting() GeometryInstance3DShadowCastingSetting {
    mut object_out := i64(GeometryInstance3DShadowCastingSetting.shadow_casting_setting_off)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_cast_shadows_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3383019359)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GeometryInstance3DShadowCastingSetting(object_out)}
}
pub fn (r &GeometryInstance3D) set_lod_bias(bias f64) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_lod_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_lod_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_lod_bias")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_transparency(transparency f64) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_transparency")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transparency)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_transparency() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_transparency")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_visibility_range_end_margin(distance f64) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_visibility_range_end_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_visibility_range_end_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_visibility_range_end_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_visibility_range_end(distance f64) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_visibility_range_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_visibility_range_end() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_visibility_range_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_visibility_range_begin_margin(distance f64) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_visibility_range_begin_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_visibility_range_begin_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_visibility_range_begin_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_visibility_range_begin(distance f64) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_visibility_range_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_visibility_range_begin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_visibility_range_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_visibility_range_fade_mode(mode GeometryInstance3DVisibilityRangeFadeMode) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_visibility_range_fade_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1440117808)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_visibility_range_fade_mode() GeometryInstance3DVisibilityRangeFadeMode {
    mut object_out := i64(GeometryInstance3DVisibilityRangeFadeMode.visibility_range_fade_disabled)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_visibility_range_fade_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2067221882)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GeometryInstance3DVisibilityRangeFadeMode(object_out)}
}
pub fn (r &GeometryInstance3D) set_instance_shader_parameter(name string, value Variant) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_instance_shader_parameter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3776071444)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_instance_shader_parameter(name string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_instance_shader_parameter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_extra_cull_margin(margin f64) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_extra_cull_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_extra_cull_margin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_extra_cull_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_lightmap_scale(scale GeometryInstance3DLightmapScale) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_lightmap_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2462696582)
    mut args := unsafe { [1]voidptr{} }
    i64_scale := i64(scale)
    args[0] = unsafe{voidptr(&i64_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_lightmap_scale() GeometryInstance3DLightmapScale {
    mut object_out := i64(GeometryInstance3DLightmapScale.lightmap_scale_1x)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_lightmap_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 798767852)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GeometryInstance3DLightmapScale(object_out)}
}
pub fn (r &GeometryInstance3D) set_gi_mode(mode GeometryInstance3DGIMode) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_gi_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2548557163)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_gi_mode() GeometryInstance3DGIMode {
    mut object_out := i64(GeometryInstance3DGIMode.gi_mode_disabled)
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_gi_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2188566509)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GeometryInstance3DGIMode(object_out)}
}
pub fn (r &GeometryInstance3D) set_ignore_occlusion_culling(ignore_culling bool) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_ignore_occlusion_culling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ignore_culling)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) is_ignoring_occlusion_culling() bool {
    mut object_out := false
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("is_ignoring_occlusion_culling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GeometryInstance3D) set_custom_aabb(aabb AABB) {
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("set_custom_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GeometryInstance3D) get_custom_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("GeometryInstance3D")
    fnname := StringName.new("get_custom_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
