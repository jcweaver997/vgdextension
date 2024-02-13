module vgdextension

@[noinit]
pub struct VehicleWheel3D {
    Node3D
}

pub fn (mut r VehicleWheel3D) set_radius(length f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_radius() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_suspension_rest_length(length f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_suspension_rest_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_suspension_rest_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_suspension_rest_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_suspension_travel(length f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_suspension_travel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_suspension_travel() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_suspension_travel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_suspension_stiffness(length f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_suspension_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_suspension_stiffness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_suspension_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_suspension_max_force(length f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_suspension_max_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_suspension_max_force() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_suspension_max_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_damping_compression(length f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_damping_compression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_damping_compression() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_damping_compression")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_damping_relaxation(length f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_damping_relaxation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_damping_relaxation() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_damping_relaxation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_use_as_traction(enable bool) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_as_traction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) is_used_as_traction() bool {
    mut object_out := false
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_used_as_traction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_use_as_steering(enable bool) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_as_steering")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) is_used_as_steering() bool {
    mut object_out := false
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_used_as_steering")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_friction_slip(length f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_friction_slip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_friction_slip() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_friction_slip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VehicleWheel3D) is_in_contact() bool {
    mut object_out := false
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_in_contact")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VehicleWheel3D) get_contact_body() Node3D {
    mut object_out := Node3D{}
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_contact_body")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 151077316)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_roll_influence(roll_influence f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_roll_influence")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&roll_influence)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_roll_influence() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_roll_influence")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VehicleWheel3D) get_skidinfo() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skidinfo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VehicleWheel3D) get_rpm() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rpm")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_engine_force(engine_force f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_engine_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&engine_force)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_engine_force() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_engine_force")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_brake(brake f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_brake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&brake)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_brake() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_brake")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VehicleWheel3D) set_steering(steering f64) {
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_steering")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&steering)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VehicleWheel3D) get_steering() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VehicleWheel3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_steering")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
