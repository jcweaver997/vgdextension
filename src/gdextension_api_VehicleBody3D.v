pub type VehicleBody3D = voidptr

pub fn (mut r VehicleBody3D) set_engine_force(engine_force f32) {
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_engine_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VehicleBody3D) get_engine_force() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_engine_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleBody3D) set_brake(brake f32) {
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_brake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VehicleBody3D) get_brake() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_brake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleBody3D) set_steering(steering f32) {
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_steering")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VehicleBody3D) get_steering() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VehicleBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_steering")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
