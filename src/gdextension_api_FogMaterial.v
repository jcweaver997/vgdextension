pub type FogMaterial = voidptr

pub fn (mut r FogMaterial) set_density(density f32) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_density")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FogMaterial) get_density() f32 {
    mut object_out := f32(0)
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_density")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FogMaterial) set_albedo(albedo Color) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_albedo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FogMaterial) get_albedo() Color {
    mut object_out := Color{}
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_albedo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FogMaterial) set_emission(emission Color) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_emission")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FogMaterial) get_emission() Color {
    mut object_out := Color{}
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_emission")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FogMaterial) set_height_falloff(height_falloff f32) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_height_falloff")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FogMaterial) get_height_falloff() f32 {
    mut object_out := f32(0)
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_height_falloff")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FogMaterial) set_edge_fade(edge_fade f32) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_edge_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FogMaterial) get_edge_fade() f32 {
    mut object_out := f32(0)
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_edge_fade")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FogMaterial) set_density_texture(density_texture Texture3D) {
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_density_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1188404210)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FogMaterial) get_density_texture() Texture3D {
    mut object_out := Texture3D(unsafe{nil})
    classname := StringName.new("FogMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_density_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373985333)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
