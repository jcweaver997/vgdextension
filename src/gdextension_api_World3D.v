module vgdextension

pub struct World3D {
    Resource
}

pub fn (r &World3D) get_space() RID {
    mut object_out := RID{}
    classname := StringName.new("World3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &World3D) get_navigation_map() RID {
    mut object_out := RID{}
    classname := StringName.new("World3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &World3D) get_scenario() RID {
    mut object_out := RID{}
    classname := StringName.new("World3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_scenario")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r World3D) set_environment(env Environment) {
    classname := StringName.new("World3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4143518816)
    mut args := unsafe { [1]voidptr{} }
    args[0] = env.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &World3D) get_environment() Environment {
    mut object_out := Environment{}
    classname := StringName.new("World3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082064660)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r World3D) set_fallback_environment(env Environment) {
    classname := StringName.new("World3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fallback_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4143518816)
    mut args := unsafe { [1]voidptr{} }
    args[0] = env.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &World3D) get_fallback_environment() Environment {
    mut object_out := Environment{}
    classname := StringName.new("World3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fallback_environment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3082064660)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r World3D) set_camera_attributes(attributes CameraAttributes) {
    classname := StringName.new("World3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_camera_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2817810567)
    mut args := unsafe { [1]voidptr{} }
    args[0] = attributes.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &World3D) get_camera_attributes() CameraAttributes {
    mut object_out := CameraAttributes{}
    classname := StringName.new("World3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_camera_attributes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3921283215)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r World3D) get_direct_space_state() PhysicsDirectSpaceState3D {
    mut object_out := PhysicsDirectSpaceState3D{}
    classname := StringName.new("World3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_direct_space_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2069328350)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
