module vgdextension

@[noinit]
pub struct CanvasLayer {
    Node
}

pub fn (mut r CanvasLayer) set_layer(layer i32) {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("set_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasLayer) get_layer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("get_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasLayer) set_visible(visible bool) {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("set_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&visible)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasLayer) is_visible() bool {
    mut object_out := false
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("is_visible")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasLayer) show() {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("show")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasLayer) hide() {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("hide")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r CanvasLayer) set_transform(transform Transform2D) {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("set_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&transform)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasLayer) get_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("get_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasLayer) get_final_transform() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("get_final_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasLayer) set_offset(offset Vector2) {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("set_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasLayer) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("get_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasLayer) set_rotation(radians f64) {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("set_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&radians)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasLayer) get_rotation() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("get_rotation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasLayer) set_scale(scale Vector2) {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("set_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasLayer) get_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("get_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasLayer) set_follow_viewport(enable bool) {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("set_follow_viewport")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasLayer) is_following_viewport() bool {
    mut object_out := false
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("is_following_viewport")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasLayer) set_follow_viewport_scale(scale f64) {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("set_follow_viewport_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasLayer) get_follow_viewport_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("get_follow_viewport_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CanvasLayer) set_custom_viewport(viewport Node) {
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("set_custom_viewport")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = viewport.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CanvasLayer) get_custom_viewport() Node {
    mut object_out := Node{}
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("get_custom_viewport")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CanvasLayer) get_canvas() RID {
    mut object_out := RID{}
    classname := StringName.new("CanvasLayer")
    fnname := StringName.new("get_canvas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
