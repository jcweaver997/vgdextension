module vgdextension

pub struct FogMaterial {
    Material
}

pub fn (mut r FogMaterial) set_density(density f64) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_density")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&density)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FogMaterial) get_density() f64 {
    mut object_out := f64(0)
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_density")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FogMaterial) set_albedo(albedo Color) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_albedo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&albedo)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FogMaterial) get_albedo() Color {
    mut object_out := Color{}
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_albedo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FogMaterial) set_emission(emission Color) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&emission)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FogMaterial) get_emission() Color {
    mut object_out := Color{}
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FogMaterial) set_height_falloff(height_falloff f64) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_height_falloff")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height_falloff)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FogMaterial) get_height_falloff() f64 {
    mut object_out := f64(0)
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_height_falloff")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FogMaterial) set_edge_fade(edge_fade f64) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_edge_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&edge_fade)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FogMaterial) get_edge_fade() f64 {
    mut object_out := f64(0)
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_edge_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FogMaterial) set_density_texture(density_texture Texture3D) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_density_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1188404210)
    mut args := unsafe { [1]voidptr{} }
    args[0] = density_texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FogMaterial) get_density_texture() Texture3D {
    mut object_out := Texture3D{}
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_density_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373985333)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
