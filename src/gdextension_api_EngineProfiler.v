module vgdextension

@[noinit]
pub struct EngineProfiler {
    RefCounted
}

pub interface IEngineProfilerToggle {
    mut:
    virt_toggle(enable bool, options Array)
}

pub fn (mut r EngineProfiler) utoggle(enable bool, options Array) {
    classname := StringName.new("EngineProfiler")
    fnname := StringName.new("_toggle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    args[1] = unsafe{voidptr(&options)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEngineProfilerAddFrame {
    mut:
    virt_add_frame(data Array)
}

pub fn (mut r EngineProfiler) uadd_frame(data Array) {
    classname := StringName.new("EngineProfiler")
    fnname := StringName.new("_add_frame")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IEngineProfilerTick {
    mut:
    virt_tick(frame_time f64, process_time f64, physics_time f64, physics_frame_time f64)
}

pub fn (mut r EngineProfiler) utick(frame_time f64, process_time f64, physics_time f64, physics_frame_time f64) {
    classname := StringName.new("EngineProfiler")
    fnname := StringName.new("_tick")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&frame_time)}
    args[1] = unsafe{voidptr(&process_time)}
    args[2] = unsafe{voidptr(&physics_time)}
    args[3] = unsafe{voidptr(&physics_frame_time)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
