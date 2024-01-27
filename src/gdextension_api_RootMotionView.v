module vgdextension

pub type RootMotionView = voidptr

pub fn (mut r RootMotionView) set_animation_path(path NodePath) {
    classname := StringName.new("RootMotionView")
    defer { classname.deinit() }
    fnname := StringName.new("set_animation_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RootMotionView) get_animation_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("RootMotionView")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RootMotionView) set_color(color Color) {
    classname := StringName.new("RootMotionView")
    defer { classname.deinit() }
    fnname := StringName.new("set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RootMotionView) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("RootMotionView")
    defer { classname.deinit() }
    fnname := StringName.new("get_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RootMotionView) set_cell_size(size f32) {
    classname := StringName.new("RootMotionView")
    defer { classname.deinit() }
    fnname := StringName.new("set_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RootMotionView) get_cell_size() f32 {
    mut object_out := f32(0)
    classname := StringName.new("RootMotionView")
    defer { classname.deinit() }
    fnname := StringName.new("get_cell_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RootMotionView) set_radius(size f32) {
    classname := StringName.new("RootMotionView")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RootMotionView) get_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("RootMotionView")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RootMotionView) set_zero_y(enable bool) {
    classname := StringName.new("RootMotionView")
    defer { classname.deinit() }
    fnname := StringName.new("set_zero_y")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &RootMotionView) get_zero_y() bool {
    mut object_out := false
    classname := StringName.new("RootMotionView")
    defer { classname.deinit() }
    fnname := StringName.new("get_zero_y")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
