module vgdextension

pub enum TimerTimerProcessCallback {
    timer_process_physics = 0
    timer_process_idle = 1
}

pub type Timer = voidptr

pub fn (mut r Timer) set_wait_time(time_sec f32) {
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("set_wait_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Timer) get_wait_time() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("get_wait_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Timer) set_one_shot(enable bool) {
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("set_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Timer) is_one_shot() bool {
    mut object_out := false
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("is_one_shot")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Timer) set_autostart(enable bool) {
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("set_autostart")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Timer) has_autostart() bool {
    mut object_out := false
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("has_autostart")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Timer) start(time_sec f32) {
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1392008558)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Timer) stop() {
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("stop")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r Timer) set_paused(paused bool) {
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("set_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Timer) is_paused() bool {
    mut object_out := false
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("is_paused")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Timer) is_stopped() bool {
    mut object_out := false
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("is_stopped")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Timer) get_time_left() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Timer) set_timer_process_callback(callback TimerTimerProcessCallback) {
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("set_timer_process_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3469495063)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Timer) get_timer_process_callback() TimerTimerProcessCallback {
    mut object_out := TimerTimerProcessCallback.timer_process_physics
    classname := StringName.new("Timer")
    defer { classname.deinit() }
    fnname := StringName.new("get_timer_process_callback")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2672570227)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
