pub type ParallaxLayer = voidptr

pub fn (mut r ParallaxLayer) set_motion_scale(scale Vector2) {
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_motion_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParallaxLayer) get_motion_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_motion_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParallaxLayer) set_motion_offset(offset Vector2) {
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_motion_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParallaxLayer) get_motion_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_motion_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParallaxLayer) set_mirroring(mirror Vector2) {
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_mirroring")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ParallaxLayer) get_mirroring() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_mirroring")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
