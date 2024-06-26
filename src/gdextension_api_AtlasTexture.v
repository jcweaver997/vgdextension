module vgdextension

@[noinit]
pub struct AtlasTexture {
    Texture2D
}

pub fn (r &AtlasTexture) set_atlas(atlas Texture2D) {
    classname := StringName.new("AtlasTexture")
    fnname := StringName.new("set_atlas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&atlas.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AtlasTexture) get_atlas() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("AtlasTexture")
    fnname := StringName.new("get_atlas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AtlasTexture) set_region(region Rect2) {
    classname := StringName.new("AtlasTexture")
    fnname := StringName.new("set_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&region)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AtlasTexture) get_region() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("AtlasTexture")
    fnname := StringName.new("get_region")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AtlasTexture) set_margin(margin Rect2) {
    classname := StringName.new("AtlasTexture")
    fnname := StringName.new("set_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&margin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AtlasTexture) get_margin() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("AtlasTexture")
    fnname := StringName.new("get_margin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AtlasTexture) set_filter_clip(enable bool) {
    classname := StringName.new("AtlasTexture")
    fnname := StringName.new("set_filter_clip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AtlasTexture) has_filter_clip() bool {
    mut object_out := false
    classname := StringName.new("AtlasTexture")
    fnname := StringName.new("has_filter_clip")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
