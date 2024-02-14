module vgdextension

@[noinit]
pub struct EngineDebugger {
    Object
}

pub fn EngineDebugger.get_singleton() EngineDebugger {
    sn := StringName.new("EngineDebugger")
    o := EngineDebugger{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (mut r EngineDebugger) is_active() bool {
    mut object_out := false
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("is_active")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EngineDebugger) register_profiler(name StringName, profiler EngineProfiler) {
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("register_profiler")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3651669560)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = profiler.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EngineDebugger) unregister_profiler(name StringName) {
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("unregister_profiler")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EngineDebugger) is_profiling(name StringName) bool {
    mut object_out := false
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("is_profiling")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EngineDebugger) has_profiler(name StringName) bool {
    mut object_out := false
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("has_profiler")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EngineDebugger) profiler_add_frame_data(name StringName, data Array) {
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("profiler_add_frame_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1895267858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EngineDebugger) profiler_enable(name StringName, enable bool, arguments Array) {
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("profiler_enable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3192561009)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&arguments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EngineDebugger) register_message_capture(name StringName, callable Callable) {
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("register_message_capture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1874754934)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EngineDebugger) unregister_message_capture(name StringName) {
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("unregister_message_capture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r EngineDebugger) has_capture(name StringName) bool {
    mut object_out := false
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("has_capture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r EngineDebugger) send_message(message String, data Array) {
    classname := StringName.new("EngineDebugger")
    fnname := StringName.new("send_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1209351045)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
