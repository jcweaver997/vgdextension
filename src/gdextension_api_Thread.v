pub enum ThreadPriority {
    priority_low = 0
    priority_normal = 1
    priority_high = 2
}

pub type Thread = voidptr

pub fn (mut r Thread) start(callable Callable, priority ThreadPriority) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Thread")
    defer { classname.deinit() }
    fnname := StringName.new("start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2779832528)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Thread) get_id() String {
    mut object_out := String{}
    classname := StringName.new("Thread")
    defer { classname.deinit() }
    fnname := StringName.new("get_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Thread) is_started() bool {
    mut object_out := false
    classname := StringName.new("Thread")
    defer { classname.deinit() }
    fnname := StringName.new("is_started")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Thread) is_alive() bool {
    mut object_out := false
    classname := StringName.new("Thread")
    defer { classname.deinit() }
    fnname := StringName.new("is_alive")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Thread) wait_to_finish() Variant {
    mut object_out := Variant{}
    classname := StringName.new("Thread")
    defer { classname.deinit() }
    fnname := StringName.new("wait_to_finish")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1460262497)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn Thread.set_thread_safety_checks_enabled(enabled bool) {
    classname := StringName.new("Thread")
    defer { classname.deinit() }
    fnname := StringName.new("set_thread_safety_checks_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, unsafe{nil})
}
