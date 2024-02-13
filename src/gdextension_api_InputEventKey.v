module vgdextension

@[noinit]
pub struct InputEventKey {
    InputEventWithModifiers
}

pub fn (mut r InputEventKey) set_pressed(pressed bool) {
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r InputEventKey) set_keycode(keycode Key) {
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("set_keycode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 888074362)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventKey) get_keycode() Key {
    mut object_out := Key.key_none
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("get_keycode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventKey) set_physical_keycode(physical_keycode Key) {
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("set_physical_keycode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 888074362)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&physical_keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventKey) get_physical_keycode() Key {
    mut object_out := Key.key_none
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("get_physical_keycode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventKey) set_key_label(key_label Key) {
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("set_key_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 888074362)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&key_label)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventKey) get_key_label() Key {
    mut object_out := Key.key_none
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("get_key_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventKey) set_unicode(unicode i32) {
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("set_unicode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unicode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventKey) get_unicode() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("get_unicode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventKey) set_echo(echo bool) {
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("set_echo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&echo)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventKey) get_keycode_with_modifiers() Key {
    mut object_out := Key.key_none
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("get_keycode_with_modifiers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEventKey) get_physical_keycode_with_modifiers() Key {
    mut object_out := Key.key_none
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("get_physical_keycode_with_modifiers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEventKey) get_key_label_with_modifiers() Key {
    mut object_out := Key.key_none
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("get_key_label_with_modifiers")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEventKey) as_text_keycode() String {
    mut object_out := String{}
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("as_text_keycode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEventKey) as_text_physical_keycode() String {
    mut object_out := String{}
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("as_text_physical_keycode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEventKey) as_text_key_label() String {
    mut object_out := String{}
    classname := StringName.new("InputEventKey")
    defer { classname.deinit() }
    fnname := StringName.new("as_text_key_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
