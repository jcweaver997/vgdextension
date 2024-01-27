module vgdextension

pub enum SoftBody3DDisableMode {
    disable_mode_remove = 0
    disable_mode_keep_active = 1
}

pub type SoftBody3D = voidptr

pub fn (r &SoftBody3D) get_physics_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_physics_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_collision_mask(collision_mask i32) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SoftBody3D) get_collision_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_collision_layer(collision_layer i32) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SoftBody3D) get_collision_layer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SoftBody3D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_collision_layer_value(layer_number i32, value bool) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SoftBody3D) get_collision_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_parent_collision_ignore(parent_collision_ignore NodePath) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_parent_collision_ignore")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SoftBody3D) get_parent_collision_ignore() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_parent_collision_ignore")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_disable_mode(mode SoftBody3DDisableMode) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_disable_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1104158384)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SoftBody3D) get_disable_mode() SoftBody3DDisableMode {
    mut object_out := SoftBody3DDisableMode.disable_mode_remove
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_disable_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135042476)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) get_collision_exceptions() Array {
    mut object_out := Array{}
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_exceptions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) add_collision_exception_with(body Node) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("add_collision_exception_with")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SoftBody3D) remove_collision_exception_with(body Node) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_collision_exception_with")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SoftBody3D) set_simulation_precision(simulation_precision i32) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_simulation_precision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SoftBody3D) get_simulation_precision() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_simulation_precision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_total_mass(mass f32) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_total_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SoftBody3D) get_total_mass() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_total_mass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_linear_stiffness(linear_stiffness f32) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SoftBody3D) get_linear_stiffness() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_stiffness")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_pressure_coefficient(pressure_coefficient f32) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressure_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SoftBody3D) get_pressure_coefficient() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_pressure_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_damping_coefficient(damping_coefficient f32) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_damping_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SoftBody3D) get_damping_coefficient() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_damping_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_drag_coefficient(drag_coefficient f32) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_drag_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r SoftBody3D) get_drag_coefficient() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_drag_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) get_point_transform(point_index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_point_transform")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 871989493)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_point_pinned(point_index i32, pinned bool, attachment_path NodePath) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_point_pinned")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814935226)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SoftBody3D) is_point_pinned(point_index i32) bool {
    mut object_out := false
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_point_pinned")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point_index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r SoftBody3D) set_ray_pickable(ray_pickable bool) {
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_ray_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SoftBody3D) is_ray_pickable() bool {
    mut object_out := false
    classname := StringName.new("SoftBody3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_ray_pickable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
