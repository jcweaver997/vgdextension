module vgdextension

pub type AtlasTexture = voidptr

pub fn (mut r AtlasTexture) set_atlas(atlas Texture2D) {
    classname := StringName.new("AtlasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_atlas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AtlasTexture) get_atlas() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("AtlasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_atlas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AtlasTexture) set_region(region Rect2) {
    classname := StringName.new("AtlasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AtlasTexture) get_region() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("AtlasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_region")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AtlasTexture) set_margin(margin Rect2) {
    classname := StringName.new("AtlasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AtlasTexture) get_margin() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("AtlasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_margin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AtlasTexture) set_filter_clip(enable bool) {
    classname := StringName.new("AtlasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_filter_clip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AtlasTexture) has_filter_clip() bool {
    mut object_out := false
    classname := StringName.new("AtlasTexture")
    defer { classname.deinit() }
    fnname := StringName.new("has_filter_clip")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
