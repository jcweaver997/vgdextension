module vgdextension

pub type ParallaxBackground = voidptr

pub fn (mut r ParallaxBackground) set_scroll_offset(offset Vector2) {
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("set_scroll_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParallaxBackground) get_scroll_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("get_scroll_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParallaxBackground) set_scroll_base_offset(offset Vector2) {
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("set_scroll_base_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParallaxBackground) get_scroll_base_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("get_scroll_base_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParallaxBackground) set_scroll_base_scale(scale Vector2) {
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("set_scroll_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParallaxBackground) get_scroll_base_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("get_scroll_base_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParallaxBackground) set_limit_begin(offset Vector2) {
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("set_limit_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParallaxBackground) get_limit_begin() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("get_limit_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParallaxBackground) set_limit_end(offset Vector2) {
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("set_limit_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParallaxBackground) get_limit_end() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("get_limit_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParallaxBackground) set_ignore_camera_zoom(ignore bool) {
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("set_ignore_camera_zoom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ParallaxBackground) is_ignore_camera_zoom() bool {
    mut object_out := false
    classname := StringName.new("ParallaxBackground")
    defer { classname.deinit() }
    fnname := StringName.new("is_ignore_camera_zoom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
