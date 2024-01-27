pub enum TextureButtonStretchMode {
    stretch_scale = 0
    stretch_tile = 1
    stretch_keep = 2
    stretch_keep_centered = 3
    stretch_keep_aspect = 4
    stretch_keep_aspect_centered = 5
    stretch_keep_aspect_covered = 6
}

pub type TextureButton = voidptr

pub fn (mut r TextureButton) set_texture_normal(texture Texture2D) {
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureButton) set_texture_pressed(texture Texture2D) {
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureButton) set_texture_hover(texture Texture2D) {
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_hover")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureButton) set_texture_disabled(texture Texture2D) {
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureButton) set_texture_focused(texture Texture2D) {
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_focused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureButton) set_click_mask(mask BitMap) {
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_click_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 698588216)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureButton) set_ignore_texture_size(ignore bool) {
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_ignore_texture_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureButton) set_stretch_mode(mode TextureButtonStretchMode) {
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_stretch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 252530840)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r TextureButton) set_flip_h(enable bool) {
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_flip_h")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureButton) is_flipped_h() bool {
    mut object_out := false
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_flipped_h")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureButton) set_flip_v(enable bool) {
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_flip_v")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TextureButton) is_flipped_v() bool {
    mut object_out := false
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_flipped_v")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureButton) get_texture_normal() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureButton) get_texture_pressed() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureButton) get_texture_hover() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_hover")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureButton) get_texture_disabled() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureButton) get_texture_focused() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_focused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureButton) get_click_mask() BitMap {
    mut object_out := BitMap(unsafe{nil})
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_click_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2459671998)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureButton) get_ignore_texture_size() bool {
    mut object_out := false
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_ignore_texture_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TextureButton) get_stretch_mode() TextureButtonStretchMode {
    mut object_out := TextureButtonStretchMode.stretch_scale
    classname := StringName.new("TextureButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_stretch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 33815122)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
