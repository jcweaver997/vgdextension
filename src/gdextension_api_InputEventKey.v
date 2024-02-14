module vgdextension

@[noinit]
pub struct InputEventKey {
    InputEventWithModifiers
}

pub fn (mut r InputEventKey) set_pressed(pressed bool) {
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("set_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r InputEventKey) set_keycode(keycode Key) {
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("set_keycode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 888074362)
    mut args := unsafe { [1]voidptr{} }
    i64_keycode := i64(keycode)
    args[0] = unsafe{voidptr(&i64_keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventKey) get_keycode() Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("get_keycode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (mut r InputEventKey) set_physical_keycode(physical_keycode Key) {
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("set_physical_keycode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 888074362)
    mut args := unsafe { [1]voidptr{} }
    i64_physical_keycode := i64(physical_keycode)
    args[0] = unsafe{voidptr(&i64_physical_keycode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventKey) get_physical_keycode() Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("get_physical_keycode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (mut r InputEventKey) set_key_label(key_label Key) {
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("set_key_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 888074362)
    mut args := unsafe { [1]voidptr{} }
    i64_key_label := i64(key_label)
    args[0] = unsafe{voidptr(&i64_key_label)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventKey) get_key_label() Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("get_key_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (mut r InputEventKey) set_unicode(unicode i64) {
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("set_unicode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unicode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventKey) get_unicode() i64 {
    mut object_out := i64(0)
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("get_unicode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputEventKey) set_echo(echo bool) {
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("set_echo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&echo)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventKey) get_keycode_with_modifiers() Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("get_keycode_with_modifiers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (r &InputEventKey) get_physical_keycode_with_modifiers() Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("get_physical_keycode_with_modifiers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (r &InputEventKey) get_key_label_with_modifiers() Key {
    mut object_out := i64(Key.key_none)
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("get_key_label_with_modifiers")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1585896689)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{Key(object_out)}
}
pub fn (r &InputEventKey) as_text_keycode() String {
    mut object_out := String{}
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("as_text_keycode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventKey) as_text_physical_keycode() String {
    mut object_out := String{}
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("as_text_physical_keycode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEventKey) as_text_key_label() String {
    mut object_out := String{}
    classname := StringName.new("InputEventKey")
    fnname := StringName.new("as_text_key_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
