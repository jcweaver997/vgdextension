module vgdextension

pub type StyleBox = voidptr

pub fn (r &StyleBox) udraw(to_canvas_item RID, rect Rect2) {
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("_draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBox) uget_draw_rect(rect Rect2) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("_get_draw_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &StyleBox) uget_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("_get_minimum_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StyleBox) utest_mask(point Vector2, rect Rect2) bool {
    mut object_out := false
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("_test_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &StyleBox) get_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_minimum_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StyleBox) set_content_margin(margin Side, offset f32) {
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("set_content_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StyleBox) set_content_margin_all(offset f32) {
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("set_content_margin_all")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBox) get_content_margin(margin Side) f32 {
    mut object_out := f32(0)
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_content_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &StyleBox) get_margin(margin Side) f32 {
    mut object_out := f32(0)
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &StyleBox) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StyleBox) draw(canvas_item RID, rect Rect2) {
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("draw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2275962004)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StyleBox) get_current_item_drawn() CanvasItem {
    mut object_out := CanvasItem(unsafe{nil})
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("get_current_item_drawn")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3213695180)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &StyleBox) test_mask(point Vector2, rect Rect2) bool {
    mut object_out := false
    classname := StringName.new("StyleBox")
    defer { classname.deinit() }
    fnname := StringName.new("test_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3735564539)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
