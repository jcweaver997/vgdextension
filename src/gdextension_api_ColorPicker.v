module vgdextension

pub enum ColorPickerColorModeType as i64 {
    mode_rgb = 0
    mode_hsv = 1
    mode_raw = 2
    mode_okhsl = 3
}

pub enum ColorPickerPickerShapeType as i64 {
    shape_hsv_rectangle = 0
    shape_hsv_wheel = 1
    shape_vhs_circle = 2
    shape_okhsl_circle = 3
    shape_none = 4
}

@[noinit]
pub struct ColorPicker {
    VBoxContainer
}

pub fn (r &ColorPicker) set_pick_color(color Color) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_pick_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) get_pick_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("get_pick_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) set_deferred_mode(mode bool) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_deferred_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) is_deferred_mode() bool {
    mut object_out := false
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("is_deferred_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) set_color_mode(color_mode ColorPickerColorModeType) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_color_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1579114136)
    mut args := unsafe { [1]voidptr{} }
    i64_color_mode := i64(color_mode)
    args[0] = unsafe{voidptr(&i64_color_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) get_color_mode() ColorPickerColorModeType {
    mut object_out := i64(ColorPickerColorModeType.mode_rgb)
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("get_color_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 392907674)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ColorPickerColorModeType(object_out)}
}
pub fn (r &ColorPicker) set_edit_alpha(show bool) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_edit_alpha")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&show)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) is_editing_alpha() bool {
    mut object_out := false
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("is_editing_alpha")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) set_can_add_swatches(enabled bool) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_can_add_swatches")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) are_swatches_enabled() bool {
    mut object_out := false
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("are_swatches_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) set_presets_visible(visible bool) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_presets_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) are_presets_visible() bool {
    mut object_out := false
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("are_presets_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) set_modes_visible(visible bool) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_modes_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) are_modes_visible() bool {
    mut object_out := false
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("are_modes_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) set_sampler_visible(visible bool) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_sampler_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) is_sampler_visible() bool {
    mut object_out := false
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("is_sampler_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) set_sliders_visible(visible bool) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_sliders_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) are_sliders_visible() bool {
    mut object_out := false
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("are_sliders_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) set_hex_visible(visible bool) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_hex_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) is_hex_visible() bool {
    mut object_out := false
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("is_hex_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) add_preset(color Color) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("add_preset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) erase_preset(color Color) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("erase_preset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) get_presets() PackedColorArray {
    mut object_out := PackedColorArray{}
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("get_presets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392750486)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) add_recent_preset(color Color) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("add_recent_preset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) erase_recent_preset(color Color) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("erase_recent_preset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) get_recent_presets() PackedColorArray {
    mut object_out := PackedColorArray{}
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("get_recent_presets")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392750486)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ColorPicker) set_picker_shape(shape ColorPickerPickerShapeType) {
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("set_picker_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3981373861)
    mut args := unsafe { [1]voidptr{} }
    i64_shape := i64(shape)
    args[0] = unsafe{voidptr(&i64_shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ColorPicker) get_picker_shape() ColorPickerPickerShapeType {
    mut object_out := i64(ColorPickerPickerShapeType.shape_hsv_rectangle)
    classname := StringName.new("ColorPicker")
    fnname := StringName.new("get_picker_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1143229889)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ColorPickerPickerShapeType(object_out)}
}
