module vgdextension

pub enum StyleBoxTextureAxisStretchMode {
    axis_stretch_mode_stretch = 0
    axis_stretch_mode_tile = 1
    axis_stretch_mode_tile_fit = 2
}

@[noinit]
pub struct StyleBoxTexture {
    StyleBox
}

pub fn (mut r StyleBoxTexture) set_texture(texture Texture2D) {
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxTexture) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxTexture) set_texture_margin(margin Side, size f64) {
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r StyleBoxTexture) set_texture_margin_all(size f64) {
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_margin_all")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxTexture) get_texture_margin(margin Side) f64 {
    mut object_out := f64(0)
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxTexture) set_expand_margin(margin Side, size f64) {
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_expand_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    args[1] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r StyleBoxTexture) set_expand_margin_all(size f64) {
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_expand_margin_all")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxTexture) get_expand_margin(margin Side) f64 {
    mut object_out := f64(0)
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_expand_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxTexture) set_region_rect(region Rect2) {
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_region_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxTexture) get_region_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_region_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxTexture) set_draw_center(enable bool) {
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_draw_center")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxTexture) is_draw_center_enabled() bool {
    mut object_out := false
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("is_draw_center_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxTexture) set_modulate(color Color) {
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxTexture) get_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxTexture) set_h_axis_stretch_mode(mode StyleBoxTextureAxisStretchMode) {
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_h_axis_stretch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2965538783)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxTexture) get_h_axis_stretch_mode() StyleBoxTextureAxisStretchMode {
    mut object_out := StyleBoxTextureAxisStretchMode.axis_stretch_mode_stretch
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_h_axis_stretch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3807744063)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBoxTexture) set_v_axis_stretch_mode(mode StyleBoxTextureAxisStretchMode) {
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_v_axis_stretch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2965538783)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &StyleBoxTexture) get_v_axis_stretch_mode() StyleBoxTextureAxisStretchMode {
    mut object_out := StyleBoxTextureAxisStretchMode.axis_stretch_mode_stretch
    classname := StringName.new("StyleBoxTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_v_axis_stretch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3807744063)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
