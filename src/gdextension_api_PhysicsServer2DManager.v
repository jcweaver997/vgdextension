module vgdextension

pub type PhysicsServer2DManager = voidptr

pub fn (mut r PhysicsServer2DManager) register_server(name String, create_callback Callable) {
    classname := StringName.new("PhysicsServer2DManager")
    defer { classname.deinit() }
    fnname := StringName.new("register_server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2137474292)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicsServer2DManager) set_default_server(name String, priority i32) {
    classname := StringName.new("PhysicsServer2DManager")
    defer { classname.deinit() }
    fnname := StringName.new("set_default_server")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
