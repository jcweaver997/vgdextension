module vgdextension

@[noinit]
pub struct PanoramaSkyMaterial {
    Material
}

pub fn (r &PanoramaSkyMaterial) set_panorama(texture Texture2D) {
    classname := StringName.new("PanoramaSkyMaterial")
    fnname := StringName.new("set_panorama")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PanoramaSkyMaterial) get_panorama() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("PanoramaSkyMaterial")
    fnname := StringName.new("get_panorama")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PanoramaSkyMaterial) set_filtering_enabled(enabled bool) {
    classname := StringName.new("PanoramaSkyMaterial")
    fnname := StringName.new("set_filtering_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PanoramaSkyMaterial) is_filtering_enabled() bool {
    mut object_out := false
    classname := StringName.new("PanoramaSkyMaterial")
    fnname := StringName.new("is_filtering_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
