module vgdextension

pub type CanvasLayer = voidptr

pub fn (mut r CanvasLayer) set_layer(layer i32) {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasLayer) get_layer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasLayer) set_visible(visible bool) {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasLayer) is_visible() bool {
    mut object_out := false
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasLayer) show() {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("show")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CanvasLayer) hide() {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("hide")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CanvasLayer) set_transform(transform Transform2D) {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasLayer) get_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CanvasLayer) get_final_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_final_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasLayer) set_offset(offset Vector2) {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasLayer) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasLayer) set_rotation(radians f32) {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasLayer) get_rotation() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_rotation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasLayer) set_scale(scale Vector2) {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasLayer) get_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasLayer) set_follow_viewport(enable bool) {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_follow_viewport")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasLayer) is_following_viewport() bool {
    mut object_out := false
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("is_following_viewport")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasLayer) set_follow_viewport_scale(scale f32) {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_follow_viewport_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasLayer) get_follow_viewport_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_follow_viewport_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasLayer) set_custom_viewport(viewport Node) {
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_viewport")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CanvasLayer) get_custom_viewport() Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_viewport")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CanvasLayer) get_canvas() RID {
    mut object_out := RID{}
    classname := StringName.new("CanvasLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_canvas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
