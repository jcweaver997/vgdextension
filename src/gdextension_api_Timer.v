module vgdextension

pub enum TimerTimerProcessCallback as i64 {
    timer_process_physics = 0
    timer_process_idle = 1
}

@[noinit]
pub struct Timer {
    Node
}

pub fn (r &Timer) set_wait_time(time_sec f64) {
    classname := StringName.new("Timer")
    fnname := StringName.new("set_wait_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Timer) get_wait_time() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Timer")
    fnname := StringName.new("get_wait_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Timer) set_one_shot(enable bool) {
    classname := StringName.new("Timer")
    fnname := StringName.new("set_one_shot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Timer) is_one_shot() bool {
    mut object_out := false
    classname := StringName.new("Timer")
    fnname := StringName.new("is_one_shot")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Timer) set_autostart(enable bool) {
    classname := StringName.new("Timer")
    fnname := StringName.new("set_autostart")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Timer) has_autostart() bool {
    mut object_out := false
    classname := StringName.new("Timer")
    fnname := StringName.new("has_autostart")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Timer) start(time_sec f64) {
    classname := StringName.new("Timer")
    fnname := StringName.new("start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392008558)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&time_sec)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Timer) stop() {
    classname := StringName.new("Timer")
    fnname := StringName.new("stop")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Timer) set_paused(paused bool) {
    classname := StringName.new("Timer")
    fnname := StringName.new("set_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&paused)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Timer) is_paused() bool {
    mut object_out := false
    classname := StringName.new("Timer")
    fnname := StringName.new("is_paused")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Timer) is_stopped() bool {
    mut object_out := false
    classname := StringName.new("Timer")
    fnname := StringName.new("is_stopped")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Timer) get_time_left() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Timer")
    fnname := StringName.new("get_time_left")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Timer) set_timer_process_callback(callback TimerTimerProcessCallback) {
    classname := StringName.new("Timer")
    fnname := StringName.new("set_timer_process_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3469495063)
    mut args := unsafe { [1]voidptr{} }
    i64_callback := i64(callback)
    args[0] = unsafe{voidptr(&i64_callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Timer) get_timer_process_callback() TimerTimerProcessCallback {
    mut object_out := i64(TimerTimerProcessCallback.timer_process_physics)
    classname := StringName.new("Timer")
    fnname := StringName.new("get_timer_process_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2672570227)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{TimerTimerProcessCallback(object_out)}
}
