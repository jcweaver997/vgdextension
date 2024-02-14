module vgdextension

@[noinit]
pub struct PointLight2D {
    Light2D
}

pub fn (mut r PointLight2D) set_texture(texture Texture2D) {
    classname := StringName.new("PointLight2D")
    fnname := StringName.new("set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PointLight2D) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("PointLight2D")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PointLight2D) set_texture_offset(texture_offset Vector2) {
    classname := StringName.new("PointLight2D")
    fnname := StringName.new("set_texture_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PointLight2D) get_texture_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("PointLight2D")
    fnname := StringName.new("get_texture_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PointLight2D) set_texture_scale(texture_scale f64) {
    classname := StringName.new("PointLight2D")
    fnname := StringName.new("set_texture_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PointLight2D) get_texture_scale() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PointLight2D")
    fnname := StringName.new("get_texture_scale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
