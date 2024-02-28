module vgdextension

pub enum SubViewportClearMode as i64 {
    clear_mode_always = 0
    clear_mode_never = 1
    clear_mode_once = 2
}

pub enum SubViewportUpdateMode as i64 {
    update_disabled = 0
    update_once = 1
    update_when_visible = 2
    update_when_parent_visible = 3
    update_always = 4
}

@[noinit]
pub struct SubViewport {
    Viewport
}

pub fn (r &SubViewport) set_size(size Vector2i) {
    classname := StringName.new("SubViewport")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SubViewport) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("SubViewport")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SubViewport) set_size_2d_override(size Vector2i) {
    classname := StringName.new("SubViewport")
    fnname := StringName.new("set_size_2d_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SubViewport) get_size_2d_override() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("SubViewport")
    fnname := StringName.new("get_size_2d_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SubViewport) set_size_2d_override_stretch(enable bool) {
    classname := StringName.new("SubViewport")
    fnname := StringName.new("set_size_2d_override_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SubViewport) is_size_2d_override_stretch_enabled() bool {
    mut object_out := false
    classname := StringName.new("SubViewport")
    fnname := StringName.new("is_size_2d_override_stretch_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SubViewport) set_update_mode(mode SubViewportUpdateMode) {
    classname := StringName.new("SubViewport")
    fnname := StringName.new("set_update_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1295690030)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SubViewport) get_update_mode() SubViewportUpdateMode {
    mut object_out := i64(SubViewportUpdateMode.update_disabled)
    classname := StringName.new("SubViewport")
    fnname := StringName.new("get_update_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2980171553)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{SubViewportUpdateMode(object_out)}
}
pub fn (r &SubViewport) set_clear_mode(mode SubViewportClearMode) {
    classname := StringName.new("SubViewport")
    fnname := StringName.new("set_clear_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2834454712)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SubViewport) get_clear_mode() SubViewportClearMode {
    mut object_out := i64(SubViewportClearMode.clear_mode_always)
    classname := StringName.new("SubViewport")
    fnname := StringName.new("get_clear_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 331324495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{SubViewportClearMode(object_out)}
}
