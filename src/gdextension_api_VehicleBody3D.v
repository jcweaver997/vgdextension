module vgdextension

pub struct VehicleBody3D {
    RigidBody3D
}

pub fn (mut r VehicleBody3D) set_engine_force(engine_force f64) {
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_engine_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&engine_force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleBody3D) get_engine_force() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_engine_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleBody3D) set_brake(brake f64) {
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_brake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&brake)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleBody3D) get_brake() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_brake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleBody3D) set_steering(steering f64) {
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_steering")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&steering)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleBody3D) get_steering() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_steering")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
