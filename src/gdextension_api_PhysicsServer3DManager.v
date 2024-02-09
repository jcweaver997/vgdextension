module vgdextension

pub struct PhysicsServer3DManager {
    Object
}

pub fn PhysicsServer3DManager.get_singleton() PhysicsServer3DManager {
    sn := StringName.new("PhysicsServer3DManager")
    defer {sn.deinit()}
    o := PhysicsServer3DManager{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r PhysicsServer3DManager) register_server(name String, create_callback Callable) {
    classname := StringName.new("PhysicsServer3DManager")
    defer { classname.deinit() }
    fnname := StringName.new("register_server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2137474292)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&create_callback)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r PhysicsServer3DManager) set_default_server(name String, priority i32) {
    classname := StringName.new("PhysicsServer3DManager")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
