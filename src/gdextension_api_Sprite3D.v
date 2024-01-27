pub type Sprite3D = voidptr

pub fn (mut r Sprite3D) set_texture(texture Texture2D) {
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Sprite3D) get_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Sprite3D) set_region_enabled(enabled bool) {
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_region_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Sprite3D) is_region_enabled() bool {
    mut object_out := false
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_region_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Sprite3D) set_region_rect(rect Rect2) {
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_region_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Sprite3D) get_region_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_region_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Sprite3D) set_frame(frame i32) {
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Sprite3D) get_frame() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Sprite3D) set_frame_coords(coords Vector2i) {
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_frame_coords")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Sprite3D) get_frame_coords() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_frame_coords")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Sprite3D) set_vframes(vframes i32) {
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_vframes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Sprite3D) get_vframes() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_vframes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Sprite3D) set_hframes(hframes i32) {
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_hframes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Sprite3D) get_hframes() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Sprite3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_hframes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
