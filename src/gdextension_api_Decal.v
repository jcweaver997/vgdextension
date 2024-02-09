module vgdextension

pub enum DecalDecalTexture {
    texture_albedo = 0
    texture_normal = 1
    texture_orm = 2
    texture_emission = 3
    texture_max = 4
}

pub struct Decal {
    VisualInstance3D
}

pub fn (mut r Decal) set_size(size Vector3) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_texture(type_name DecalDecalTexture, texture Texture2D) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2086764391)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    args[1] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_texture(type_name DecalDecalTexture) Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3244119503)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_emission_energy(energy f64) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_emission_energy() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission_energy")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_albedo_mix(energy f64) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_albedo_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&energy)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_albedo_mix() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_albedo_mix")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_modulate(color Color) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_modulate() Color {
    mut object_out := Color{}
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_modulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_upper_fade(fade f64) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_upper_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fade)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_upper_fade() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_upper_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_lower_fade(fade f64) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_lower_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fade)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_lower_fade() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_lower_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_normal_fade(fade f64) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_normal_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fade)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_normal_fade() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_normal_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_enable_distance_fade(enable bool) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_enable_distance_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) is_distance_fade_enabled() bool {
    mut object_out := false
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("is_distance_fade_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_distance_fade_begin(distance f64) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_distance_fade_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_distance_fade_begin() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_distance_fade_begin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_distance_fade_length(distance f64) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_distance_fade_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&distance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_distance_fade_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_distance_fade_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Decal) set_cull_mask(mask u32) {
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("set_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Decal) get_cull_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("Decal")
    defer { classname.deinit() }
    fnname := StringName.new("get_cull_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
