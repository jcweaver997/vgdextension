module vgdextension

pub enum ThreadPriority as i64 {
    priority_low = 0
    priority_normal = 1
    priority_high = 2
}

@[noinit]
pub struct Thread {
    RefCounted
}

pub fn (r &Thread) start(callable Callable, priority ThreadPriority) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Thread")
    fnname := StringName.new("start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1327203254)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&callable)}
    i64_priority := i64(priority)
    args[1] = unsafe{voidptr(&i64_priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Thread) get_id() string {
    mut object_out := String{}
    classname := StringName.new("Thread")
    fnname := StringName.new("get_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Thread) is_started() bool {
    mut object_out := false
    classname := StringName.new("Thread")
    fnname := StringName.new("is_started")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Thread) is_alive() bool {
    mut object_out := false
    classname := StringName.new("Thread")
    fnname := StringName.new("is_alive")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Thread) wait_to_finish() Variant {
    mut object_out := Variant{}
    classname := StringName.new("Thread")
    fnname := StringName.new("wait_to_finish")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1460262497)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn Thread.set_thread_safety_checks_enabled(enabled bool) {
    classname := StringName.new("Thread")
    fnname := StringName.new("set_thread_safety_checks_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
