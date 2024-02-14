module vgdextension

@[noinit]
pub struct StyleBox {
    Resource
}

pub interface IStyleBoxDraw {
    mut:
    virt_draw(to_canvas_item RID, rect Rect2)
}

pub fn (r &StyleBox) udraw(to_canvas_item RID, rect Rect2) {
    classname := StringName.new("StyleBox")
    fnname := StringName.new("_draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&to_canvas_item)}
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IStyleBoxGetDrawRect {
    mut:
    virt_get_draw_rect(rect Rect2) Rect2
}

pub fn (r &StyleBox) uget_draw_rect(rect Rect2) Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("StyleBox")
    fnname := StringName.new("_get_draw_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IStyleBoxGetMinimumSize {
    mut:
    virt_get_minimum_size() Vector2
}

pub fn (r &StyleBox) uget_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StyleBox")
    fnname := StringName.new("_get_minimum_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IStyleBoxTestMask {
    mut:
    virt_test_mask(point Vector2, rect Rect2) bool
}

pub fn (r &StyleBox) utest_mask(point Vector2, rect Rect2) bool {
    mut object_out := false
    classname := StringName.new("StyleBox")
    fnname := StringName.new("_test_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBox) get_minimum_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StyleBox")
    fnname := StringName.new("get_minimum_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StyleBox) set_content_margin(margin Side, offset f64) {
    classname := StringName.new("StyleBox")
    fnname := StringName.new("set_content_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4290182280)
    mut args := unsafe { [2]voidptr{} }
    i64_margin := i64(margin)
    args[0] = unsafe{voidptr(&i64_margin)}
    args[1] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StyleBox) set_content_margin_all(offset f64) {
    classname := StringName.new("StyleBox")
    fnname := StringName.new("set_content_margin_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBox) get_content_margin(margin Side) f64 {
    mut object_out := f64(0)
    classname := StringName.new("StyleBox")
    fnname := StringName.new("get_content_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    i64_margin := i64(margin)
    args[0] = unsafe{voidptr(&i64_margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBox) get_margin(margin Side) f64 {
    mut object_out := f64(0)
    classname := StringName.new("StyleBox")
    fnname := StringName.new("get_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2869120046)
    mut args := unsafe { [1]voidptr{} }
    i64_margin := i64(margin)
    args[0] = unsafe{voidptr(&i64_margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBox) get_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("StyleBox")
    fnname := StringName.new("get_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBox) draw(canvas_item RID, rect Rect2) {
    classname := StringName.new("StyleBox")
    fnname := StringName.new("draw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2275962004)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&canvas_item)}
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StyleBox) get_current_item_drawn() CanvasItem {
    mut object_out := CanvasItem{}
    classname := StringName.new("StyleBox")
    fnname := StringName.new("get_current_item_drawn")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3213695180)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StyleBox) test_mask(point Vector2, rect Rect2) bool {
    mut object_out := false
    classname := StringName.new("StyleBox")
    fnname := StringName.new("test_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3735564539)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
