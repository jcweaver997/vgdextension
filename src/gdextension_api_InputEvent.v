module vgdextension

pub type InputEvent = voidptr

pub fn (mut r InputEvent) set_device(device i32) {
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("set_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEvent) get_device() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("get_device")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) is_action(action StringName, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("is_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) is_action_pressed(action StringName, allow_echo bool, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("is_action_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1631499404)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&allow_echo)}
    args[2] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) is_action_released(action StringName, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("is_action_released")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) get_action_strength(action StringName, exact_match bool) f32 {
    mut object_out := f32(0)
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 801543509)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) is_canceled() bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("is_canceled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) is_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("is_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) is_released() bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("is_released")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) is_echo() bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("is_echo")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) as_text() String {
    mut object_out := String{}
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("as_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) is_match(event InputEvent, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("is_match")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3392494811)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&event)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) is_action_type() bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("is_action_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEvent) accumulate(with_event InputEvent) bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("accumulate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1062211774)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&with_event)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &InputEvent) xformed_by(xform Transform2D, local_ofs Vector2) InputEvent {
    mut object_out := InputEvent(unsafe{nil})
    classname := StringName.new("InputEvent")
    defer { classname.deinit() }
    fnname := StringName.new("xformed_by")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2747409789)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&xform)}
    args[1] = unsafe{voidptr(&local_ofs)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
