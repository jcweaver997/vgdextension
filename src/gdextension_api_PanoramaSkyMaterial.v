module vgdextension

pub type PanoramaSkyMaterial = voidptr

pub fn (mut r PanoramaSkyMaterial) set_panorama(texture Texture2D) {
    classname := StringName.new("PanoramaSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_panorama")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PanoramaSkyMaterial) get_panorama() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("PanoramaSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("get_panorama")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PanoramaSkyMaterial) set_filtering_enabled(enabled bool) {
    classname := StringName.new("PanoramaSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("set_filtering_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PanoramaSkyMaterial) is_filtering_enabled() bool {
    mut object_out := false
    classname := StringName.new("PanoramaSkyMaterial")
    defer { classname.deinit() }
    fnname := StringName.new("is_filtering_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
