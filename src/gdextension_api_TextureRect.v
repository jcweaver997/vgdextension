module vgdextension

pub enum TextureRectExpandMode {
    expand_keep_size = 0
    expand_ignore_size = 1
    expand_fit_width = 2
    expand_fit_width_proportional = 3
    expand_fit_height = 4
    expand_fit_height_proportional = 5
}

pub enum TextureRectStretchMode {
    stretch_scale = 0
    stretch_tile = 1
    stretch_keep = 2
    stretch_keep_centered = 3
    stretch_keep_aspect = 4
    stretch_keep_aspect_centered = 5
    stretch_keep_aspect_covered = 6
}

@[noinit]
pub struct TextureRect {
    Control
}

pub fn (mut r TextureRect) set_texture(texture Texture2D) {
    classname := StringName.new("TextureRect")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextureRect) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TextureRect")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureRect) set_expand_mode(expand_mode TextureRectExpandMode) {
    classname := StringName.new("TextureRect")
    defer { classname.deinit() }
    fnname := StringName.new("set_expand_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1870766882)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&expand_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextureRect) get_expand_mode() TextureRectExpandMode {
    mut object_out := TextureRectExpandMode.expand_keep_size
    classname := StringName.new("TextureRect")
    defer { classname.deinit() }
    fnname := StringName.new("get_expand_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3863824733)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureRect) set_flip_h(enable bool) {
    classname := StringName.new("TextureRect")
    defer { classname.deinit() }
    fnname := StringName.new("set_flip_h")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextureRect) is_flipped_h() bool {
    mut object_out := false
    classname := StringName.new("TextureRect")
    defer { classname.deinit() }
    fnname := StringName.new("is_flipped_h")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureRect) set_flip_v(enable bool) {
    classname := StringName.new("TextureRect")
    defer { classname.deinit() }
    fnname := StringName.new("set_flip_v")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextureRect) is_flipped_v() bool {
    mut object_out := false
    classname := StringName.new("TextureRect")
    defer { classname.deinit() }
    fnname := StringName.new("is_flipped_v")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TextureRect) set_stretch_mode(stretch_mode TextureRectStretchMode) {
    classname := StringName.new("TextureRect")
    defer { classname.deinit() }
    fnname := StringName.new("set_stretch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 58788729)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&stretch_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TextureRect) get_stretch_mode() TextureRectStretchMode {
    mut object_out := TextureRectStretchMode.stretch_scale
    classname := StringName.new("TextureRect")
    defer { classname.deinit() }
    fnname := StringName.new("get_stretch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 346396079)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
