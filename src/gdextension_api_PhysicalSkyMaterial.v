module vgdextension

@[noinit]
pub struct PhysicalSkyMaterial {
    Material
}

pub fn (mut r PhysicalSkyMaterial) set_rayleigh_coefficient(rayleigh f64) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_rayleigh_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rayleigh)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_rayleigh_coefficient() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_rayleigh_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_rayleigh_color(color Color) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_rayleigh_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_rayleigh_color() Color {
    mut object_out := Color{}
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_rayleigh_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_mie_coefficient(mie f64) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_mie_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mie)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_mie_coefficient() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_mie_coefficient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_mie_eccentricity(eccentricity f64) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_mie_eccentricity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&eccentricity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_mie_eccentricity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_mie_eccentricity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_mie_color(color Color) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_mie_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_mie_color() Color {
    mut object_out := Color{}
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_mie_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_turbidity(turbidity f64) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_turbidity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&turbidity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_turbidity() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_turbidity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_sun_disk_scale(scale f64) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_sun_disk_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_sun_disk_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_sun_disk_scale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_ground_color(color Color) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_ground_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_ground_color() Color {
    mut object_out := Color{}
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_ground_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_energy_multiplier(multiplier f64) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&multiplier)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_energy_multiplier() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_energy_multiplier")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_use_debanding(use_debanding bool) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_debanding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&use_debanding)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_use_debanding() bool {
    mut object_out := false
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_use_debanding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalSkyMaterial) set_night_sky(night_sky Texture2D) {
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_night_sky")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = night_sky.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PhysicalSkyMaterial) get_night_sky() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("PhysicalSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_night_sky")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
