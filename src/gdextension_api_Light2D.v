module vgdextension

pub enum Light2DShadowFilter as i64 {
    shadow_filter_none = 0
    shadow_filter_pcf5 = 1
    shadow_filter_pcf13 = 2
}

pub enum Light2DBlendMode as i64 {
    blend_mode_add = 0
    blend_mode_sub = 1
    blend_mode_mix = 2
}

@[noinit]
pub struct Light2D {
    Node2D
}

pub fn (r &Light2D) set_enabled(enabled bool) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) is_enabled() bool {
    mut object_out := false
    classname := StringName.new("Light2D")
    fnname := StringName.new("is_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_editor_only(editor_only bool) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_editor_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&editor_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) is_editor_only() bool {
    mut object_out := false
    classname := StringName.new("Light2D")
    fnname := StringName.new("is_editor_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_color(color Color) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_energy(energy f64) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_energy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_energy")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_z_range_min(z i32) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_z_range_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&z)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_z_range_min() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_z_range_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_z_range_max(z i32) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_z_range_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&z)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_z_range_max() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_z_range_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_layer_range_min(layer i32) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_layer_range_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_layer_range_min() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_layer_range_min")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_layer_range_max(layer i32) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_layer_range_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_layer_range_max() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_layer_range_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_item_cull_mask(item_cull_mask i32) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_item_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&item_cull_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_item_cull_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_item_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_item_shadow_cull_mask(item_shadow_cull_mask i32) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_item_shadow_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&item_shadow_cull_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_item_shadow_cull_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_item_shadow_cull_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_shadow_enabled(enabled bool) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_shadow_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) is_shadow_enabled() bool {
    mut object_out := false
    classname := StringName.new("Light2D")
    fnname := StringName.new("is_shadow_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_shadow_smooth(smooth f64) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_shadow_smooth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&smooth)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_shadow_smooth() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_shadow_smooth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_shadow_filter(filter Light2DShadowFilter) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_shadow_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3209356555)
    mut args := unsafe { [1]voidptr{} }
    i64_filter := i64(filter)
    args[0] = unsafe{voidptr(&i64_filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_shadow_filter() Light2DShadowFilter {
    mut object_out := i64(Light2DShadowFilter.shadow_filter_none)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_shadow_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1973619177)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Light2DShadowFilter(object_out)}
}
pub fn (r &Light2D) set_shadow_color(shadow_color Color) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_shadow_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shadow_color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_shadow_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_shadow_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Light2D) set_blend_mode(mode Light2DBlendMode) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2916638796)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_blend_mode() Light2DBlendMode {
    mut object_out := i64(Light2DBlendMode.blend_mode_add)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 936255250)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Light2DBlendMode(object_out)}
}
pub fn (r &Light2D) set_height(height f64) {
    classname := StringName.new("Light2D")
    fnname := StringName.new("set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Light2D) get_height() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Light2D")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
