pub type PhysicalSkyMaterial = voidptr

pub fn (mut r PhysicalSkyMaterial) set_rayleigh_coefficient(rayleigh f32) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_rayleigh_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_rayleigh_coefficient() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_rayleigh_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_rayleigh_color(color Color) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_rayleigh_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_rayleigh_color() Color {
    mut object_out := Color{}
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_rayleigh_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_mie_coefficient(mie f32) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_mie_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_mie_coefficient() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_mie_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_mie_eccentricity(eccentricity f32) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_mie_eccentricity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_mie_eccentricity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_mie_eccentricity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_mie_color(color Color) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_mie_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_mie_color() Color {
    mut object_out := Color{}
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_mie_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_turbidity(turbidity f32) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_turbidity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_turbidity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_turbidity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_sun_disk_scale(scale f32) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sun_disk_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_sun_disk_scale() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sun_disk_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_ground_color(color Color) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_ground_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_ground_color() Color {
    mut object_out := Color{}
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_ground_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_energy_multiplier(multiplier f32) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_energy_multiplier() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_use_debanding(use_debanding bool) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_debanding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_use_debanding() bool {
    mut object_out := false
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_debanding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_night_sky(night_sky Texture2D) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_night_sky")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_night_sky() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_night_sky")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
