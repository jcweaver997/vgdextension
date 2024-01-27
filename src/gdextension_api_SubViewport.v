pub enum SubViewportClearMode {
    clear_mode_always = 0
    clear_mode_never = 1
    clear_mode_once = 2
}

pub enum SubViewportUpdateMode {
    update_disabled = 0
    update_once = 1
    update_when_visible = 2
    update_when_parent_visible = 3
    update_always = 4
}

pub type SubViewport = voidptr

pub fn (mut r SubViewport) set_size(size Vector2i) {
    classname := StringName.new("SubViewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SubViewport) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("SubViewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SubViewport) set_size_2d_override(size Vector2i) {
    classname := StringName.new("SubViewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_size_2d_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SubViewport) get_size_2d_override() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("SubViewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_size_2d_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SubViewport) set_size_2d_override_stretch(enable bool) {
    classname := StringName.new("SubViewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_size_2d_override_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SubViewport) is_size_2d_override_stretch_enabled() bool {
    mut object_out := false
    classname := StringName.new("SubViewport")
    defer { classname.deinit() }
    fnname := StringName.new("is_size_2d_override_stretch_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SubViewport) set_update_mode(mode SubViewportUpdateMode) {
    classname := StringName.new("SubViewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_update_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1295690030)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SubViewport) get_update_mode() SubViewportUpdateMode {
    mut object_out := SubViewportUpdateMode.update_disabled
    classname := StringName.new("SubViewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_update_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2980171553)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SubViewport) set_clear_mode(mode SubViewportClearMode) {
    classname := StringName.new("SubViewport")
    defer { classname.deinit() }
    fnname := StringName.new("set_clear_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2834454712)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SubViewport) get_clear_mode() SubViewportClearMode {
    mut object_out := SubViewportClearMode.clear_mode_always
    classname := StringName.new("SubViewport")
    defer { classname.deinit() }
    fnname := StringName.new("get_clear_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 331324495)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
