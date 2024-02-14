module vgdextension

@[noinit]
pub struct Texture2D {
    Texture
}

pub interface ITexture2DGetWidth {
    mut:
    virt_get_width() i32
}

pub fn (r &Texture2D) uget_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Texture2D")
    fnname := StringName.new("_get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITexture2DGetHeight {
    mut:
    virt_get_height() i32
}

pub fn (r &Texture2D) uget_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Texture2D")
    fnname := StringName.new("_get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITexture2DIsPixelOpaque {
    mut:
    virt_is_pixel_opaque(x i32, y i32) bool
}

pub fn (r &Texture2D) uis_pixel_opaque(x i32, y i32) bool {
    mut object_out := false
    classname := StringName.new("Texture2D")
    fnname := StringName.new("_is_pixel_opaque")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&x)}
    args[1] = unsafe{voidptr(&y)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITexture2DHasAlpha {
    mut:
    virt_has_alpha() bool
}

pub fn (r &Texture2D) uhas_alpha() bool {
    mut object_out := false
    classname := StringName.new("Texture2D")
    fnname := StringName.new("_has_alpha")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface ITexture2DDraw {
    mut:
    virt_draw(to_canvas_item RID, pos Vector2, modulate Color, transpose bool)
}

pub fn (r &Texture2D) udraw(to_canvas_item RID, pos Vector2, modulate Color, transpose bool) {
    classname := StringName.new("Texture2D")
    fnname := StringName.new("_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&to_canvas_item)}
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&modulate)}
    args[3] = unsafe{voidptr(&transpose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITexture2DDrawRect {
    mut:
    virt_draw_rect(to_canvas_item RID, rect Rect2, tile bool, modulate Color, transpose bool)
}

pub fn (r &Texture2D) udraw_rect(to_canvas_item RID, rect Rect2, tile bool, modulate Color, transpose bool) {
    classname := StringName.new("Texture2D")
    fnname := StringName.new("_draw_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&to_canvas_item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&tile)}
    args[3] = unsafe{voidptr(&modulate)}
    args[4] = unsafe{voidptr(&transpose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface ITexture2DDrawRectRegion {
    mut:
    virt_draw_rect_region(to_canvas_item RID, rect Rect2, src_rect Rect2, modulate Color, transpose bool, clip_uv bool)
}

pub fn (r &Texture2D) udraw_rect_region(to_canvas_item RID, rect Rect2, src_rect Rect2, modulate Color, transpose bool, clip_uv bool) {
    classname := StringName.new("Texture2D")
    fnname := StringName.new("_draw_rect_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&to_canvas_item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&src_rect)}
    args[3] = unsafe{voidptr(&modulate)}
    args[4] = unsafe{voidptr(&transpose)}
    args[5] = unsafe{voidptr(&clip_uv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Texture2D) get_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Texture2D")
    fnname := StringName.new("get_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Texture2D) get_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Texture2D")
    fnname := StringName.new("get_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Texture2D) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Texture2D")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Texture2D) has_alpha() bool {
    mut object_out := false
    classname := StringName.new("Texture2D")
    fnname := StringName.new("has_alpha")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Texture2D) draw(canvas_item RID, position Vector2, modulate Color, transpose bool) {
    classname := StringName.new("Texture2D")
    fnname := StringName.new("draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2729649137)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&position)}
    args[2] = unsafe{voidptr(&modulate)}
    args[3] = unsafe{voidptr(&transpose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Texture2D) draw_rect(canvas_item RID, rect Rect2, tile bool, modulate Color, transpose bool) {
    classname := StringName.new("Texture2D")
    fnname := StringName.new("draw_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3499451691)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&tile)}
    args[3] = unsafe{voidptr(&modulate)}
    args[4] = unsafe{voidptr(&transpose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Texture2D) draw_rect_region(canvas_item RID, rect Rect2, src_rect Rect2, modulate Color, transpose bool, clip_uv bool) {
    classname := StringName.new("Texture2D")
    fnname := StringName.new("draw_rect_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2963678660)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&src_rect)}
    args[3] = unsafe{voidptr(&modulate)}
    args[4] = unsafe{voidptr(&transpose)}
    args[5] = unsafe{voidptr(&clip_uv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Texture2D) get_image() Image {
    mut object_out := Image{}
    classname := StringName.new("Texture2D")
    fnname := StringName.new("get_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4190603485)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Texture2D) create_placeholder() Resource {
    mut object_out := Resource{}
    classname := StringName.new("Texture2D")
    fnname := StringName.new("create_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
