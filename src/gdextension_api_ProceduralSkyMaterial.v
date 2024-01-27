module vgdextension

pub type ProceduralSkyMaterial = voidptr

pub fn (mut r ProceduralSkyMaterial) set_sky_top_color(color Color) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sky_top_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_sky_top_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sky_top_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_sky_horizon_color(color Color) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sky_horizon_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_sky_horizon_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sky_horizon_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_sky_curve(curve f32) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sky_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_sky_curve() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sky_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_sky_energy_multiplier(multiplier f32) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sky_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_sky_energy_multiplier() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sky_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_sky_cover(sky_cover Texture2D) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sky_cover")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_sky_cover() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sky_cover")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_sky_cover_modulate(color Color) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sky_cover_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_sky_cover_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sky_cover_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_ground_bottom_color(color Color) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_ground_bottom_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_ground_bottom_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_ground_bottom_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_ground_horizon_color(color Color) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_ground_horizon_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_ground_horizon_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_ground_horizon_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_ground_curve(curve f32) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_ground_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_ground_curve() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_ground_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_ground_energy_multiplier(energy f32) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_ground_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_ground_energy_multiplier() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_ground_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_sun_angle_max(degrees f32) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sun_angle_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_sun_angle_max() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sun_angle_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_sun_curve(curve f32) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sun_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_sun_curve() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sun_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProceduralSkyMaterial) set_use_debanding(use_debanding bool) {
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_debanding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ProceduralSkyMaterial) get_use_debanding() bool {
    mut object_out := false
    classname := StringName.new("ProceduralSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_debanding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
