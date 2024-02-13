module vgdextension

@[noinit]
pub struct ParallaxLayer {
    Node2D
}

pub fn (mut r ParallaxLayer) set_motion_scale(scale Vector2) {
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_motion_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ParallaxLayer) get_motion_scale() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_motion_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParallaxLayer) set_motion_offset(offset Vector2) {
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_motion_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ParallaxLayer) get_motion_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_motion_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ParallaxLayer) set_mirroring(mirror Vector2) {
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("set_mirroring")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mirror)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ParallaxLayer) get_mirroring() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("ParallaxLayer")
    defer { classname.deinit() }
    fnname := StringName.new("get_mirroring")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
