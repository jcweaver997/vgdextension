module vgdextension

pub enum CanvasItemTextureFilter as i64 {
    texture_filter_parent_node = 0
    texture_filter_nearest = 1
    texture_filter_linear = 2
    texture_filter_nearest_with_mipmaps = 3
    texture_filter_linear_with_mipmaps = 4
    texture_filter_nearest_with_mipmaps_anisotropic = 5
    texture_filter_linear_with_mipmaps_anisotropic = 6
    texture_filter_max = 7
}

pub enum CanvasItemTextureRepeat as i64 {
    texture_repeat_parent_node = 0
    texture_repeat_disabled = 1
    texture_repeat_enabled = 2
    texture_repeat_mirror = 3
    texture_repeat_max = 4
}

pub enum CanvasItemClipChildrenMode as i64 {
    clip_children_disabled = 0
    clip_children_only = 1
    clip_children_and_draw = 2
    clip_children_max = 3
}

@[noinit]
pub struct CanvasItem {
    Node
}

pub interface ICanvasItemDraw {
    mut:
    virt_draw()
}

pub fn (mut r CanvasItem) udraw() {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_canvas_item() RID {
    mut object_out := RID{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_canvas_item")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_visible(visible bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) is_visible() bool {
    mut object_out := false
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("is_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) is_visible_in_tree() bool {
    mut object_out := false
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("is_visible_in_tree")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) show() {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("show")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) hide() {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("hide")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) queue_redraw() {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("queue_redraw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) move_to_front() {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("move_to_front")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) set_as_top_level(enable bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_as_top_level")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) is_set_as_top_level() bool {
    mut object_out := false
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("is_set_as_top_level")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_light_mask(light_mask i32) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_light_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&light_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_light_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_light_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_modulate(modulate Color) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_self_modulate(self_modulate Color) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_self_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&self_modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_self_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_self_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_z_index(z_index i32) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_z_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&z_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_z_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_z_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_z_as_relative(enable bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_z_as_relative")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) is_z_relative() bool {
    mut object_out := false
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("is_z_relative")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_y_sort_enabled(enabled bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_y_sort_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) is_y_sort_enabled() bool {
    mut object_out := false
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("is_y_sort_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_draw_behind_parent(enable bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_draw_behind_parent")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) is_draw_behind_parent_enabled() bool {
    mut object_out := false
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("is_draw_behind_parent_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) draw_line(from Vector2, to Vector2, color Color, width f64, antialiased bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1562330099)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&color)}
    args[3] = unsafe{voidptr(&width)}
    args[4] = unsafe{voidptr(&antialiased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_dashed_line(from Vector2, to Vector2, color Color, width f64, dash f64, aligned bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_dashed_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 684651049)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&from)}
    args[1] = unsafe{voidptr(&to)}
    args[2] = unsafe{voidptr(&color)}
    args[3] = unsafe{voidptr(&width)}
    args[4] = unsafe{voidptr(&dash)}
    args[5] = unsafe{voidptr(&aligned)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_polyline(points PackedVector2Array, color Color, width f64, antialiased bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_polyline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3797364428)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    args[1] = unsafe{voidptr(&color)}
    args[2] = unsafe{voidptr(&width)}
    args[3] = unsafe{voidptr(&antialiased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_polyline_colors(points PackedVector2Array, colors PackedColorArray, width f64, antialiased bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_polyline_colors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311979562)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    args[1] = unsafe{voidptr(&colors)}
    args[2] = unsafe{voidptr(&width)}
    args[3] = unsafe{voidptr(&antialiased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_arc(center Vector2, radius f64, start_angle f64, end_angle f64, point_count i32, color Color, width f64, antialiased bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_arc")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4140652635)
    mut args := unsafe { [8]voidptr{} }
    args[0] = unsafe{voidptr(&center)}
    args[1] = unsafe{voidptr(&radius)}
    args[2] = unsafe{voidptr(&start_angle)}
    args[3] = unsafe{voidptr(&end_angle)}
    args[4] = unsafe{voidptr(&point_count)}
    args[5] = unsafe{voidptr(&color)}
    args[6] = unsafe{voidptr(&width)}
    args[7] = unsafe{voidptr(&antialiased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_multiline(points PackedVector2Array, color Color, width f64) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_multiline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2239075205)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    args[1] = unsafe{voidptr(&color)}
    args[2] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_multiline_colors(points PackedVector2Array, colors PackedColorArray, width f64) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_multiline_colors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4072951537)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    args[1] = unsafe{voidptr(&colors)}
    args[2] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_rect(rect Rect2, color Color, filled bool, width f64) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2417231121)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    args[1] = unsafe{voidptr(&color)}
    args[2] = unsafe{voidptr(&filled)}
    args[3] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_circle(position Vector2, radius f64, color Color) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_circle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3063020269)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&radius)}
    args[2] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_texture(texture Texture2D, position Vector2, modulate Color) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 520200117)
    mut args := unsafe { [3]voidptr{} }
    args[0] = texture.ptr
    args[1] = unsafe{voidptr(&position)}
    args[2] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_texture_rect(texture Texture2D, rect Rect2, tile bool, modulate Color, transpose bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_texture_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3832805018)
    mut args := unsafe { [5]voidptr{} }
    args[0] = texture.ptr
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&tile)}
    args[3] = unsafe{voidptr(&modulate)}
    args[4] = unsafe{voidptr(&transpose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_texture_rect_region(texture Texture2D, rect Rect2, src_rect Rect2, modulate Color, transpose bool, clip_uv bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_texture_rect_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3883821411)
    mut args := unsafe { [6]voidptr{} }
    args[0] = texture.ptr
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&src_rect)}
    args[3] = unsafe{voidptr(&modulate)}
    args[4] = unsafe{voidptr(&transpose)}
    args[5] = unsafe{voidptr(&clip_uv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_msdf_texture_rect_region(texture Texture2D, rect Rect2, src_rect Rect2, modulate Color, outline f64, pixel_range f64, scale f64) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_msdf_texture_rect_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4219163252)
    mut args := unsafe { [7]voidptr{} }
    args[0] = texture.ptr
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&src_rect)}
    args[3] = unsafe{voidptr(&modulate)}
    args[4] = unsafe{voidptr(&outline)}
    args[5] = unsafe{voidptr(&pixel_range)}
    args[6] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_lcd_texture_rect_region(texture Texture2D, rect Rect2, src_rect Rect2, modulate Color) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_lcd_texture_rect_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3212350954)
    mut args := unsafe { [4]voidptr{} }
    args[0] = texture.ptr
    args[1] = unsafe{voidptr(&rect)}
    args[2] = unsafe{voidptr(&src_rect)}
    args[3] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_style_box(style_box StyleBox, rect Rect2) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_style_box")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 388176283)
    mut args := unsafe { [2]voidptr{} }
    args[0] = style_box.ptr
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_primitive(points PackedVector2Array, colors PackedColorArray, uvs PackedVector2Array, texture Texture2D) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_primitive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3288481815)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    args[1] = unsafe{voidptr(&colors)}
    args[2] = unsafe{voidptr(&uvs)}
    args[3] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_polygon(points PackedVector2Array, colors PackedColorArray, uvs PackedVector2Array, texture Texture2D) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 974537912)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    args[1] = unsafe{voidptr(&colors)}
    args[2] = unsafe{voidptr(&uvs)}
    args[3] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_colored_polygon(points PackedVector2Array, color Color, uvs PackedVector2Array, texture Texture2D) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_colored_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 15245644)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&points)}
    args[1] = unsafe{voidptr(&color)}
    args[2] = unsafe{voidptr(&uvs)}
    args[3] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) draw_string(font Font, pos Vector2, text String, alignment HorizontalAlignment, width f64, font_size i32, modulate Color, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 728290553)
    mut args := unsafe { [10]voidptr{} }
    args[0] = font.ptr
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&text)}
    i64_alignment := i64(alignment)
    args[3] = unsafe{voidptr(&i64_alignment)}
    args[4] = unsafe{voidptr(&width)}
    args[5] = unsafe{voidptr(&font_size)}
    args[6] = unsafe{voidptr(&modulate)}
    i64_justification_flags := i64(justification_flags)
    args[7] = unsafe{voidptr(&i64_justification_flags)}
    i64_direction := i64(direction)
    args[8] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[9] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) draw_multiline_string(font Font, pos Vector2, text String, alignment HorizontalAlignment, width f64, font_size i32, max_lines i32, modulate Color, brk_flags TextServerLineBreakFlag, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_multiline_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1927038192)
    mut args := unsafe { [12]voidptr{} }
    args[0] = font.ptr
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&text)}
    i64_alignment := i64(alignment)
    args[3] = unsafe{voidptr(&i64_alignment)}
    args[4] = unsafe{voidptr(&width)}
    args[5] = unsafe{voidptr(&font_size)}
    args[6] = unsafe{voidptr(&max_lines)}
    args[7] = unsafe{voidptr(&modulate)}
    i64_brk_flags := i64(brk_flags)
    args[8] = unsafe{voidptr(&i64_brk_flags)}
    i64_justification_flags := i64(justification_flags)
    args[9] = unsafe{voidptr(&i64_justification_flags)}
    i64_direction := i64(direction)
    args[10] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[11] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) draw_string_outline(font Font, pos Vector2, text String, alignment HorizontalAlignment, width f64, font_size i32, size i32, modulate Color, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_string_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 340562381)
    mut args := unsafe { [11]voidptr{} }
    args[0] = font.ptr
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&text)}
    i64_alignment := i64(alignment)
    args[3] = unsafe{voidptr(&i64_alignment)}
    args[4] = unsafe{voidptr(&width)}
    args[5] = unsafe{voidptr(&font_size)}
    args[6] = unsafe{voidptr(&size)}
    args[7] = unsafe{voidptr(&modulate)}
    i64_justification_flags := i64(justification_flags)
    args[8] = unsafe{voidptr(&i64_justification_flags)}
    i64_direction := i64(direction)
    args[9] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[10] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) draw_multiline_string_outline(font Font, pos Vector2, text String, alignment HorizontalAlignment, width f64, font_size i32, max_lines i32, size i32, modulate Color, brk_flags TextServerLineBreakFlag, justification_flags TextServerJustificationFlag, direction TextServerDirection, orientation TextServerOrientation) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_multiline_string_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1912318525)
    mut args := unsafe { [13]voidptr{} }
    args[0] = font.ptr
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&text)}
    i64_alignment := i64(alignment)
    args[3] = unsafe{voidptr(&i64_alignment)}
    args[4] = unsafe{voidptr(&width)}
    args[5] = unsafe{voidptr(&font_size)}
    args[6] = unsafe{voidptr(&max_lines)}
    args[7] = unsafe{voidptr(&size)}
    args[8] = unsafe{voidptr(&modulate)}
    i64_brk_flags := i64(brk_flags)
    args[9] = unsafe{voidptr(&i64_brk_flags)}
    i64_justification_flags := i64(justification_flags)
    args[10] = unsafe{voidptr(&i64_justification_flags)}
    i64_direction := i64(direction)
    args[11] = unsafe{voidptr(&i64_direction)}
    i64_orientation := i64(orientation)
    args[12] = unsafe{voidptr(&i64_orientation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) draw_char(font Font, pos Vector2, gdchar String, font_size i32, modulate Color) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_char")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3339793283)
    mut args := unsafe { [5]voidptr{} }
    args[0] = font.ptr
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&gdchar)}
    args[3] = unsafe{voidptr(&font_size)}
    args[4] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) draw_char_outline(font Font, pos Vector2, gdchar String, font_size i32, size i32, modulate Color) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_char_outline")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3302344391)
    mut args := unsafe { [6]voidptr{} }
    args[0] = font.ptr
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&gdchar)}
    args[3] = unsafe{voidptr(&font_size)}
    args[4] = unsafe{voidptr(&size)}
    args[5] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_mesh(mesh Mesh, texture Texture2D, transform Transform2D, modulate Color) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 153818295)
    mut args := unsafe { [4]voidptr{} }
    args[0] = mesh.ptr
    args[1] = texture.ptr
    args[2] = unsafe{voidptr(&transform)}
    args[3] = unsafe{voidptr(&modulate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_multimesh(multimesh MultiMesh, texture Texture2D) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_multimesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 937992368)
    mut args := unsafe { [2]voidptr{} }
    args[0] = multimesh.ptr
    args[1] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_set_transform(position Vector2, rotation f64, scale Vector2) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 288975085)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&rotation)}
    args[2] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_set_transform_matrix(xform Transform2D) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_set_transform_matrix")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&xform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_animation_slice(animation_length f64, slice_begin f64, slice_end f64, offset f64) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_animation_slice")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3112831842)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&animation_length)}
    args[1] = unsafe{voidptr(&slice_begin)}
    args[2] = unsafe{voidptr(&slice_end)}
    args[3] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasItem) draw_end_animation() {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("draw_end_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) get_global_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_global_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) get_global_transform_with_canvas() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_global_transform_with_canvas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) get_viewport_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_viewport_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) get_viewport_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_viewport_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) get_canvas_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_canvas_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) get_screen_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_screen_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) get_local_mouse_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_local_mouse_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) get_global_mouse_position() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_global_mouse_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) get_canvas() RID {
    mut object_out := RID{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_canvas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) get_world_2d() World2D {
    mut object_out := World2D{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_world_2d")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339128592)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_material(material Material) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_material() Material {
    mut object_out := Material{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_use_parent_material(enable bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_use_parent_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_use_parent_material() bool {
    mut object_out := false
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_use_parent_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_notify_local_transform(enable bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_notify_local_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) is_local_transform_notification_enabled() bool {
    mut object_out := false
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("is_local_transform_notification_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_notify_transform(enable bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_notify_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) is_transform_notification_enabled() bool {
    mut object_out := false
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("is_transform_notification_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) force_update_transform() {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("force_update_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) make_canvas_position_local(screen_point Vector2) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("make_canvas_position_local")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656412154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&screen_point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasItem) make_input_local(event InputEvent) InputEvent {
    mut object_out := InputEvent{}
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("make_input_local")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 811130057)
    mut args := unsafe { [1]voidptr{} }
    args[0] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_visibility_layer(layer u32) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_visibility_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_visibility_layer() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_visibility_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_visibility_layer_bit(layer u32, enabled bool) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_visibility_layer_bit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    args[1] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_visibility_layer_bit(layer u32) bool {
    mut object_out := false
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_visibility_layer_bit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasItem) set_texture_filter(mode CanvasItemTextureFilter) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_texture_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1037999706)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_texture_filter() CanvasItemTextureFilter {
    mut object_out := i64(CanvasItemTextureFilter.texture_filter_parent_node)
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_texture_filter")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121960042)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CanvasItemTextureFilter(object_out)}
}
pub fn (mut r CanvasItem) set_texture_repeat(mode CanvasItemTextureRepeat) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_texture_repeat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1716472974)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_texture_repeat() CanvasItemTextureRepeat {
    mut object_out := i64(CanvasItemTextureRepeat.texture_repeat_parent_node)
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_texture_repeat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2667158319)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CanvasItemTextureRepeat(object_out)}
}
pub fn (mut r CanvasItem) set_clip_children_mode(mode CanvasItemClipChildrenMode) {
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("set_clip_children_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1319393776)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasItem) get_clip_children_mode() CanvasItemClipChildrenMode {
    mut object_out := i64(CanvasItemClipChildrenMode.clip_children_disabled)
    classname := StringName.new("CanvasItem")
    fnname := StringName.new("get_clip_children_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3581808349)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CanvasItemClipChildrenMode(object_out)}
}
