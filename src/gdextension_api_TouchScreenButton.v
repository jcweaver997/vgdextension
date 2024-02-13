module vgdextension

pub enum TouchScreenButtonVisibilityMode {
    visibility_always = 0
    visibility_touchscreen_only = 1
}

@[noinit]
pub struct TouchScreenButton {
    Node2D
}

pub fn (mut r TouchScreenButton) set_texture_normal(texture Texture2D) {
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TouchScreenButton) get_texture_normal() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TouchScreenButton) set_texture_pressed(texture Texture2D) {
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TouchScreenButton) get_texture_pressed() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TouchScreenButton) set_bitmask(bitmask BitMap) {
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_bitmask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 698588216)
    mut args := unsafe { [1]voidptr{} }
    args[0] = bitmask.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TouchScreenButton) get_bitmask() BitMap {
    mut object_out := BitMap{}
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_bitmask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2459671998)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TouchScreenButton) set_shape(shape Shape2D) {
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 771364740)
    mut args := unsafe { [1]voidptr{} }
    args[0] = shape.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TouchScreenButton) get_shape() Shape2D {
    mut object_out := Shape2D{}
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 522005891)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TouchScreenButton) set_shape_centered(gdbool bool) {
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_shape_centered")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdbool)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TouchScreenButton) is_shape_centered() bool {
    mut object_out := false
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_shape_centered")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TouchScreenButton) set_shape_visible(gdbool bool) {
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_shape_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdbool)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TouchScreenButton) is_shape_visible() bool {
    mut object_out := false
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_shape_visible")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TouchScreenButton) set_action(action String) {
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TouchScreenButton) get_action() String {
    mut object_out := String{}
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TouchScreenButton) set_visibility_mode(mode TouchScreenButtonVisibilityMode) {
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_visibility_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3031128463)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TouchScreenButton) get_visibility_mode() TouchScreenButtonVisibilityMode {
    mut object_out := TouchScreenButtonVisibilityMode.visibility_always
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("get_visibility_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2558996468)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TouchScreenButton) set_passby_press(enabled bool) {
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("set_passby_press")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &TouchScreenButton) is_passby_press_enabled() bool {
    mut object_out := false
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_passby_press_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &TouchScreenButton) is_pressed() bool {
    mut object_out := false
    classname := StringName.new("TouchScreenButton")
    defer { classname.deinit() }
    fnname := StringName.new("is_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
