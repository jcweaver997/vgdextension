module vgdextension

@[noinit]
pub struct ProceduralSkyMaterial {
    Material
}

pub fn (r &ProceduralSkyMaterial) set_sky_top_color(color Color) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_sky_top_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_sky_top_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_sky_top_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_sky_horizon_color(color Color) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_sky_horizon_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_sky_horizon_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_sky_horizon_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_sky_curve(curve f64) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_sky_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&curve)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_sky_curve() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_sky_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_sky_energy_multiplier(multiplier f64) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_sky_energy_multiplier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multiplier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_sky_energy_multiplier() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_sky_energy_multiplier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_sky_cover(sky_cover Texture2D) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_sky_cover")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&sky_cover.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_sky_cover() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_sky_cover")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_sky_cover_modulate(color Color) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_sky_cover_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_sky_cover_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_sky_cover_modulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_ground_bottom_color(color Color) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_ground_bottom_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_ground_bottom_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_ground_bottom_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_ground_horizon_color(color Color) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_ground_horizon_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_ground_horizon_color() Color {
    mut object_out := Color{}
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_ground_horizon_color")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_ground_curve(curve f64) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_ground_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&curve)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_ground_curve() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_ground_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_ground_energy_multiplier(energy f64) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_ground_energy_multiplier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_ground_energy_multiplier() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_ground_energy_multiplier")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_sun_angle_max(degrees f64) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_sun_angle_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&degrees)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_sun_angle_max() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_sun_angle_max")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_sun_curve(curve f64) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_sun_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&curve)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_sun_curve() f64 {
    mut object_out := f64(0)
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_sun_curve")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProceduralSkyMaterial) set_use_debanding(use_debanding bool) {
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("set_use_debanding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_debanding)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProceduralSkyMaterial) get_use_debanding() bool {
    mut object_out := false
    classname := StringName.new("ProceduralSkyMaterial")
    fnname := StringName.new("get_use_debanding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
