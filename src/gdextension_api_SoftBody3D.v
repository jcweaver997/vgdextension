module vgdextension

pub enum SoftBody3DDisableMode as i64 {
    disable_mode_remove = 0
    disable_mode_keep_active = 1
}

@[noinit]
pub struct SoftBody3D {
    MeshInstance3D
}

pub fn (r &SoftBody3D) get_physics_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_physics_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_collision_mask(collision_mask u32) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_collision_layer(collision_layer u32) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collision_layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_collision_layer() u32 {
    mut object_out := u32(0)
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_collision_layer_value(layer_number i32, value bool) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_collision_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_collision_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_collision_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_parent_collision_ignore(parent_collision_ignore NodePath) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_parent_collision_ignore")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&parent_collision_ignore)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_parent_collision_ignore() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_parent_collision_ignore")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_disable_mode(mode SoftBody3DDisableMode) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_disable_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1104158384)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_disable_mode() SoftBody3DDisableMode {
    mut object_out := i64(SoftBody3DDisableMode.disable_mode_remove)
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_disable_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4135042476)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{SoftBody3DDisableMode(object_out)}
}
pub fn (r &SoftBody3D) get_collision_exceptions() Array {
    mut object_out := Array{}
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_collision_exceptions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) add_collision_exception_with(body Node) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("add_collision_exception_with")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&body.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) remove_collision_exception_with(body Node) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("remove_collision_exception_with")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&body.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) set_simulation_precision(simulation_precision i32) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_simulation_precision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&simulation_precision)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_simulation_precision() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_simulation_precision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_total_mass(mass f64) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_total_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mass)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_total_mass() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_total_mass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_linear_stiffness(linear_stiffness f64) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_linear_stiffness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&linear_stiffness)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_linear_stiffness() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_linear_stiffness")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_pressure_coefficient(pressure_coefficient f64) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_pressure_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressure_coefficient)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_pressure_coefficient() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_pressure_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_damping_coefficient(damping_coefficient f64) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_damping_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&damping_coefficient)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_damping_coefficient() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_damping_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_drag_coefficient(drag_coefficient f64) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_drag_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&drag_coefficient)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) get_drag_coefficient() f64 {
    mut object_out := f64(0)
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_drag_coefficient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) get_point_transform(point_index i32) Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("get_point_transform")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 871989493)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_point_pinned(point_index i32, pinned bool, attachment_path NodePath) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_point_pinned")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814935226)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&point_index)}
    args[1] = unsafe{voidptr(&pinned)}
    args[2] = unsafe{voidptr(&attachment_path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) is_point_pinned(point_index i32) bool {
    mut object_out := false
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("is_point_pinned")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SoftBody3D) set_ray_pickable(ray_pickable bool) {
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("set_ray_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ray_pickable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SoftBody3D) is_ray_pickable() bool {
    mut object_out := false
    classname := StringName.new("SoftBody3D")
    fnname := StringName.new("is_ray_pickable")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
