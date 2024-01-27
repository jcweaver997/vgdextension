pub type CameraAttributesPractical = voidptr

pub fn (mut r CameraAttributesPractical) set_dof_blur_far_enabled(enabled bool) {
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("set_dof_blur_far_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPractical) is_dof_blur_far_enabled() bool {
    mut object_out := false
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("is_dof_blur_far_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPractical) set_dof_blur_far_distance(distance f32) {
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("set_dof_blur_far_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPractical) get_dof_blur_far_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("get_dof_blur_far_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPractical) set_dof_blur_far_transition(distance f32) {
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("set_dof_blur_far_transition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPractical) get_dof_blur_far_transition() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("get_dof_blur_far_transition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPractical) set_dof_blur_near_enabled(enabled bool) {
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("set_dof_blur_near_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPractical) is_dof_blur_near_enabled() bool {
    mut object_out := false
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("is_dof_blur_near_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPractical) set_dof_blur_near_distance(distance f32) {
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("set_dof_blur_near_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPractical) get_dof_blur_near_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("get_dof_blur_near_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPractical) set_dof_blur_near_transition(distance f32) {
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("set_dof_blur_near_transition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPractical) get_dof_blur_near_transition() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("get_dof_blur_near_transition")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPractical) set_dof_blur_amount(amount f32) {
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("set_dof_blur_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPractical) get_dof_blur_amount() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("get_dof_blur_amount")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPractical) set_auto_exposure_max_sensitivity(max_sensitivity f32) {
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_exposure_max_sensitivity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPractical) get_auto_exposure_max_sensitivity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("get_auto_exposure_max_sensitivity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPractical) set_auto_exposure_min_sensitivity(min_sensitivity f32) {
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_exposure_min_sensitivity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPractical) get_auto_exposure_min_sensitivity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPractical")
    defer { classname.deinit() }
    fnname := StringName.new("get_auto_exposure_min_sensitivity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
