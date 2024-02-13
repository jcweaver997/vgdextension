module vgdextension

@[noinit]
pub struct CanvasTexture {
    Texture2D
}

pub fn (mut r CanvasTexture) set_diffuse_texture(texture Texture2D) {
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_diffuse_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CanvasTexture) get_diffuse_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_diffuse_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasTexture) set_normal_texture(texture Texture2D) {
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_normal_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CanvasTexture) get_normal_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_normal_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasTexture) set_specular_texture(texture Texture2D) {
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_specular_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CanvasTexture) get_specular_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_specular_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasTexture) set_specular_color(color Color) {
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_specular_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&color)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CanvasTexture) get_specular_color() Color {
    mut object_out := Color{}
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_specular_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3444240500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasTexture) set_specular_shininess(shininess f64) {
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_specular_shininess")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shininess)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CanvasTexture) get_specular_shininess() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_specular_shininess")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasTexture) set_texture_filter(filter CanvasItemTextureFilter) {
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1037999706)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&filter)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CanvasTexture) get_texture_filter() CanvasItemTextureFilter {
    mut object_out := CanvasItemTextureFilter.texture_filter_parent_node
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121960042)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CanvasTexture) set_texture_repeat(repeat CanvasItemTextureRepeat) {
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1716472974)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&repeat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CanvasTexture) get_texture_repeat() CanvasItemTextureRepeat {
    mut object_out := CanvasItemTextureRepeat.texture_repeat_parent_node
    classname := StringName.new("CanvasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2667158319)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
