module vgdextension

pub enum Area3DSpaceOverride {
    space_override_disabled = 0
    space_override_combine = 1
    space_override_combine_replace = 2
    space_override_replace = 3
    space_override_replace_combine = 4
}

pub type Area3D = voidptr

pub fn (mut r Area3D) set_gravity_space_override_mode(space_override_mode Area3DSpaceOverride) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity_space_override_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311433571)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_gravity_space_override_mode() Area3DSpaceOverride {
    mut object_out := Area3DSpaceOverride.space_override_disabled
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity_space_override_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 958191869)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_gravity_is_point(enable bool) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity_is_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) is_gravity_a_point() bool {
    mut object_out := false
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_gravity_a_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_gravity_point_unit_distance(distance_scale f32) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity_point_unit_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_gravity_point_unit_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity_point_unit_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_gravity_point_center(center Vector3) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity_point_center")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_gravity_point_center() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity_point_center")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_gravity_direction(direction Vector3) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_gravity_direction() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity_direction")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_gravity(gravity f32) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_gravity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gravity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_linear_damp_space_override_mode(space_override_mode Area3DSpaceOverride) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_damp_space_override_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311433571)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_linear_damp_space_override_mode() Area3DSpaceOverride {
    mut object_out := Area3DSpaceOverride.space_override_disabled
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_damp_space_override_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 958191869)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_angular_damp_space_override_mode(space_override_mode Area3DSpaceOverride) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_damp_space_override_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311433571)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_angular_damp_space_override_mode() Area3DSpaceOverride {
    mut object_out := Area3DSpaceOverride.space_override_disabled
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_damp_space_override_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 958191869)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_angular_damp(angular_damp f32) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_angular_damp() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_angular_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_linear_damp(linear_damp f32) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_linear_damp() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_linear_damp")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_priority(priority i32) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_wind_force_magnitude(wind_force_magnitude f32) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_wind_force_magnitude")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_wind_force_magnitude() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_wind_force_magnitude")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_wind_attenuation_factor(wind_attenuation_factor f32) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_wind_attenuation_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_wind_attenuation_factor() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_wind_attenuation_factor")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_wind_source_path(wind_source_path NodePath) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_wind_source_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_wind_source_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_wind_source_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_monitorable(enable bool) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_monitorable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) is_monitorable() bool {
    mut object_out := false
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_monitorable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_monitoring(enable bool) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_monitoring")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) is_monitoring() bool {
    mut object_out := false
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_monitoring")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Area3D) get_overlapping_bodies() Array {
    mut object_out := Array{}
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_overlapping_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Area3D) get_overlapping_areas() Array {
    mut object_out := Array{}
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_overlapping_areas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Area3D) has_overlapping_bodies() bool {
    mut object_out := false
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("has_overlapping_bodies")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Area3D) has_overlapping_areas() bool {
    mut object_out := false
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("has_overlapping_areas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Area3D) overlaps_body(body Node) bool {
    mut object_out := false
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("overlaps_body")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&body)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Area3D) overlaps_area(area Node) bool {
    mut object_out := false
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("overlaps_area")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3093956946)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&area)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_audio_bus_override(enable bool) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_audio_bus_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) is_overriding_audio_bus() bool {
    mut object_out := false
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_overriding_audio_bus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_audio_bus_name(name StringName) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_audio_bus_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_audio_bus_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_audio_bus_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_use_reverb_bus(enable bool) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_reverb_bus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) is_using_reverb_bus() bool {
    mut object_out := false
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_reverb_bus")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_reverb_bus_name(name StringName) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_reverb_bus_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_reverb_bus_name() StringName {
    mut object_out := StringName{}
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_reverb_bus_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_reverb_amount(amount f32) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_reverb_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_reverb_amount() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_reverb_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Area3D) set_reverb_uniformity(amount f32) {
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_reverb_uniformity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Area3D) get_reverb_uniformity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Area3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_reverb_uniformity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
