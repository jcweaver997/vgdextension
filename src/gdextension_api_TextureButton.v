module vgdextension

pub enum TextureButtonStretchMode as i64 {
    stretch_scale = 0
    stretch_tile = 1
    stretch_keep = 2
    stretch_keep_centered = 3
    stretch_keep_aspect = 4
    stretch_keep_aspect_centered = 5
    stretch_keep_aspect_covered = 6
}

@[noinit]
pub struct TextureButton {
    BaseButton
}

pub fn (r &TextureButton) set_texture_normal(texture Texture2D) {
    classname := StringName.new("TextureButton")
    fnname := StringName.new("set_texture_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureButton) set_texture_pressed(texture Texture2D) {
    classname := StringName.new("TextureButton")
    fnname := StringName.new("set_texture_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureButton) set_texture_hover(texture Texture2D) {
    classname := StringName.new("TextureButton")
    fnname := StringName.new("set_texture_hover")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureButton) set_texture_disabled(texture Texture2D) {
    classname := StringName.new("TextureButton")
    fnname := StringName.new("set_texture_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureButton) set_texture_focused(texture Texture2D) {
    classname := StringName.new("TextureButton")
    fnname := StringName.new("set_texture_focused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureButton) set_click_mask(mask BitMap) {
    classname := StringName.new("TextureButton")
    fnname := StringName.new("set_click_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 698588216)
    mut args := unsafe { [1]voidptr{} }
    args[0] = mask.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureButton) set_ignore_texture_size(ignore bool) {
    classname := StringName.new("TextureButton")
    fnname := StringName.new("set_ignore_texture_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ignore)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureButton) set_stretch_mode(mode TextureButtonStretchMode) {
    classname := StringName.new("TextureButton")
    fnname := StringName.new("set_stretch_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 252530840)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureButton) set_flip_h(enable bool) {
    classname := StringName.new("TextureButton")
    fnname := StringName.new("set_flip_h")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureButton) is_flipped_h() bool {
    mut object_out := false
    classname := StringName.new("TextureButton")
    fnname := StringName.new("is_flipped_h")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureButton) set_flip_v(enable bool) {
    classname := StringName.new("TextureButton")
    fnname := StringName.new("set_flip_v")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &TextureButton) is_flipped_v() bool {
    mut object_out := false
    classname := StringName.new("TextureButton")
    fnname := StringName.new("is_flipped_v")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureButton) get_texture_normal() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TextureButton")
    fnname := StringName.new("get_texture_normal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureButton) get_texture_pressed() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TextureButton")
    fnname := StringName.new("get_texture_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureButton) get_texture_hover() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TextureButton")
    fnname := StringName.new("get_texture_hover")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureButton) get_texture_disabled() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TextureButton")
    fnname := StringName.new("get_texture_disabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureButton) get_texture_focused() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TextureButton")
    fnname := StringName.new("get_texture_focused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureButton) get_click_mask() BitMap {
    mut object_out := BitMap{}
    classname := StringName.new("TextureButton")
    fnname := StringName.new("get_click_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2459671998)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureButton) get_ignore_texture_size() bool {
    mut object_out := false
    classname := StringName.new("TextureButton")
    fnname := StringName.new("get_ignore_texture_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &TextureButton) get_stretch_mode() TextureButtonStretchMode {
    mut object_out := i64(TextureButtonStretchMode.stretch_scale)
    classname := StringName.new("TextureButton")
    fnname := StringName.new("get_stretch_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 33815122)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TextureButtonStretchMode(object_out)}
}
