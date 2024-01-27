pub type Polygon2D = voidptr

pub fn (mut r Polygon2D) set_polygon(polygon PackedVector2Array) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_polygon() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_polygon")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_uv(uv PackedVector2Array) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_uv() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_uv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_color(color Color) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_polygons(polygons Array) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_polygons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_polygons() Array {
    mut object_out := Array{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_polygons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_vertex_colors(vertex_colors PackedColorArray) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertex_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3546319833)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_vertex_colors() PackedColorArray {
    mut object_out := PackedColorArray{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_vertex_colors")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392750486)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_texture(texture Texture2D) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_texture_offset(texture_offset Vector2) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_texture_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_texture_rotation(texture_rotation f32) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_texture_rotation() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_texture_scale(texture_scale Vector2) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_texture_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_invert_enabled(invert bool) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_invert_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_invert_enabled() bool {
    mut object_out := false
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_invert_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_antialiased(antialiased bool) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_antialiased")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_antialiased() bool {
    mut object_out := false
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_antialiased")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_invert_border(invert_border f32) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_invert_border")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_invert_border() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_invert_border")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_offset(offset Vector2) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) add_bone(path NodePath, weights PackedFloat32Array) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("add_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 703042815)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_bone_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Polygon2D) get_bone_path(index i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Polygon2D) get_bone_weights(index i32) PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_weights")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1542882410)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) erase_bone(index i32) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("erase_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Polygon2D) clear_bones() {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("clear_bones")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Polygon2D) set_bone_path(index i32, path NodePath) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761262315)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Polygon2D) set_bone_weights(index i32, weights PackedFloat32Array) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_weights")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1345852415)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Polygon2D) set_skeleton(skeleton NodePath) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_skeleton() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Polygon2D) set_internal_vertex_count(internal_vertex_count i32) {
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_internal_vertex_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Polygon2D) get_internal_vertex_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Polygon2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_internal_vertex_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
