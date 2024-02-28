module vgdextension

@[noinit]
pub struct Polygon2D {
    Node2D
}

pub fn (r &Polygon2D) set_polygon(polygon PackedVector2Array) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_polygon")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_uv(uv PackedVector2Array) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_uv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_uv() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_uv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_color(color Color) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_polygons(polygons Array) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_polygons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&polygons)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_polygons() Array {
    mut object_out := Array{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_polygons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_vertex_colors(vertex_colors PackedColorArray) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_vertex_colors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3546319833)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertex_colors)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_vertex_colors() PackedColorArray {
    mut object_out := PackedColorArray{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_vertex_colors")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392750486)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_texture(texture Texture2D) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_texture_offset(texture_offset Vector2) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_texture_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_texture_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_texture_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_texture_rotation(texture_rotation f64) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_texture_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_rotation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_texture_rotation() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_texture_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_texture_scale(texture_scale Vector2) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_texture_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_texture_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_texture_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_invert_enabled(invert bool) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_invert_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&invert)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_invert_enabled() bool {
    mut object_out := false
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_invert_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_antialiased(antialiased bool) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_antialiased")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&antialiased)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_antialiased() bool {
    mut object_out := false
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_antialiased")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_invert_border(invert_border f64) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_invert_border")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&invert_border)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_invert_border() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_invert_border")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_offset(offset Vector2) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) add_bone(path NodePath, weights PackedFloat32Array) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("add_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 703042815)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&weights)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_bone_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_bone_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) get_bone_path(index i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_bone_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) get_bone_weights(index i32) PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_bone_weights")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1542882410)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) erase_bone(index i32) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("erase_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) clear_bones() {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("clear_bones")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) set_bone_path(index i32, path NodePath) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_bone_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) set_bone_weights(index i32, weights PackedFloat32Array) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_bone_weights")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1345852415)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    args[1] = unsafe{voidptr(&weights)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) set_skeleton(skeleton NodePath) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skeleton)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_skeleton() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Polygon2D) set_internal_vertex_count(internal_vertex_count i32) {
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("set_internal_vertex_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&internal_vertex_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Polygon2D) get_internal_vertex_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Polygon2D")
    fnname := StringName.new("get_internal_vertex_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
