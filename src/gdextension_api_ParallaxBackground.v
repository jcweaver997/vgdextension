module vgdextension

@[noinit]
pub struct ParallaxBackground {
    CanvasLayer
}

pub fn (mut r ParallaxBackground) set_scroll_offset(offset Vector2) {
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("set_scroll_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParallaxBackground) get_scroll_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("get_scroll_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ParallaxBackground) set_scroll_base_offset(offset Vector2) {
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("set_scroll_base_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParallaxBackground) get_scroll_base_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("get_scroll_base_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ParallaxBackground) set_scroll_base_scale(scale Vector2) {
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("set_scroll_base_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParallaxBackground) get_scroll_base_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("get_scroll_base_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ParallaxBackground) set_limit_begin(offset Vector2) {
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("set_limit_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParallaxBackground) get_limit_begin() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("get_limit_begin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ParallaxBackground) set_limit_end(offset Vector2) {
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("set_limit_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ParallaxBackground) get_limit_end() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("get_limit_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ParallaxBackground) set_ignore_camera_zoom(ignore bool) {
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("set_ignore_camera_zoom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ignore)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ParallaxBackground) is_ignore_camera_zoom() bool {
    mut object_out := false
    classname := StringName.new("ParallaxBackground")
    fnname := StringName.new("is_ignore_camera_zoom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
