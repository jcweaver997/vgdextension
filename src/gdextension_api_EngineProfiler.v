module vgdextension

pub type EngineProfiler = voidptr

pub fn (mut r EngineProfiler) utoggle(enable bool, options Array) {
    classname := StringName.new("EngineProfiler")
    defer { classname.deinit() }
    fnname := StringName.new("_toggle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EngineProfiler) uadd_frame(data Array) {
    classname := StringName.new("EngineProfiler")
    defer { classname.deinit() }
    fnname := StringName.new("_add_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EngineProfiler) utick(frame_time f32, process_time f32, physics_time f32, physics_frame_time f32) {
    classname := StringName.new("EngineProfiler")
    defer { classname.deinit() }
    fnname := StringName.new("_tick")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
