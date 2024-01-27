pub type CameraAttributesPhysical = voidptr

pub fn (mut r CameraAttributesPhysical) set_aperture(aperture f32) {
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("set_aperture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPhysical) get_aperture() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("get_aperture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPhysical) set_shutter_speed(shutter_speed f32) {
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("set_shutter_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPhysical) get_shutter_speed() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("get_shutter_speed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPhysical) set_focal_length(focal_length f32) {
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("set_focal_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPhysical) get_focal_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("get_focal_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPhysical) set_focus_distance(focus_distance f32) {
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("set_focus_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPhysical) get_focus_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("get_focus_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPhysical) set_near(near f32) {
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("set_near")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPhysical) get_near() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("get_near")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPhysical) set_far(far f32) {
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("set_far")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPhysical) get_far() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("get_far")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CameraAttributesPhysical) get_fov() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("get_fov")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPhysical) set_auto_exposure_max_exposure_value(exposure_value_max f32) {
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_exposure_max_exposure_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPhysical) get_auto_exposure_max_exposure_value() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("get_auto_exposure_max_exposure_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CameraAttributesPhysical) set_auto_exposure_min_exposure_value(exposure_value_min f32) {
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_exposure_min_exposure_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CameraAttributesPhysical) get_auto_exposure_min_exposure_value() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CameraAttributesPhysical")
    defer { classname.deinit() }
    fnname := StringName.new("get_auto_exposure_min_exposure_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
