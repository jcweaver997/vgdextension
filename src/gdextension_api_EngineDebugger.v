module vgdextension

@[noinit]
pub struct EngineDebugger {
    Object
}

pub fn EngineDebugger.get_singleton() EngineDebugger {
    sn := StringName.new("EngineDebugger")
    defer {sn.deinit()}
    o := EngineDebugger{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r EngineDebugger) is_active() bool {
    mut object_out := false
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("is_active")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EngineDebugger) register_profiler(name StringName, profiler EngineProfiler) {
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("register_profiler")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3651669560)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = profiler.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EngineDebugger) unregister_profiler(name StringName) {
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("unregister_profiler")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EngineDebugger) is_profiling(name StringName) bool {
    mut object_out := false
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("is_profiling")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EngineDebugger) has_profiler(name StringName) bool {
    mut object_out := false
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("has_profiler")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EngineDebugger) profiler_add_frame_data(name StringName, data Array) {
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("profiler_add_frame_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1895267858)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EngineDebugger) profiler_enable(name StringName, enable bool, arguments Array) {
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("profiler_enable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 438160728)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&enable)}
    args[2] = unsafe{voidptr(&arguments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EngineDebugger) register_message_capture(name StringName, callable Callable) {
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("register_message_capture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1874754934)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&callable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EngineDebugger) unregister_message_capture(name StringName) {
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("unregister_message_capture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EngineDebugger) has_capture(name StringName) bool {
    mut object_out := false
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("has_capture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EngineDebugger) send_message(message String, data Array) {
    classname := StringName.new("EngineDebugger")
    defer { classname.deinit() }
    fnname := StringName.new("send_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1209351045)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&message)}
    args[1] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
