pub type WorldEnvironment = voidptr

pub fn (mut r WorldEnvironment) set_environment(env Environment) {
    classname := StringName.new("WorldEnvironment")
    defer { classname.deinit() }
    fnname := StringName.new("set_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4143518816)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WorldEnvironment) get_environment() Environment {
    mut object_out := Environment(unsafe{nil})
    classname := StringName.new("WorldEnvironment")
    defer { classname.deinit() }
    fnname := StringName.new("get_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082064660)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WorldEnvironment) set_camera_attributes(camera_attributes CameraAttributes) {
    classname := StringName.new("WorldEnvironment")
    defer { classname.deinit() }
    fnname := StringName.new("set_camera_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WorldEnvironment) get_camera_attributes() CameraAttributes {
    mut object_out := CameraAttributes(unsafe{nil})
    classname := StringName.new("WorldEnvironment")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
