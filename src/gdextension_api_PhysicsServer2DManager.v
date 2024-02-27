module vgdextension

@[noinit]
pub struct PhysicsServer2DManager {
    Object
}

pub fn PhysicsServer2DManager.get_singleton() PhysicsServer2DManager {
    sn := StringName.new("PhysicsServer2DManager")
    o := PhysicsServer2DManager{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (mut r PhysicsServer2DManager) register_server(name string, create_callback Callable) {
    classname := StringName.new("PhysicsServer2DManager")
    fnname := StringName.new("register_server")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2137474292)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&create_callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r PhysicsServer2DManager) set_default_server(name string, priority i32) {
    classname := StringName.new("PhysicsServer2DManager")
    fnname := StringName.new("set_default_server")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
