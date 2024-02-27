module vgdextension

@[noinit]
pub struct InputEvent {
    Resource
}

pub fn (mut r InputEvent) set_device(device i32) {
    classname := StringName.new("InputEvent")
    fnname := StringName.new("set_device")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&device)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEvent) get_device() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEvent")
    fnname := StringName.new("get_device")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) is_action(action string, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    fnname := StringName.new("is_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) is_action_pressed(action string, allow_echo bool, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    fnname := StringName.new("is_action_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1631499404)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&allow_echo)}
    args[2] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) is_action_released(action string, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    fnname := StringName.new("is_action_released")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1558498928)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) get_action_strength(action string, exact_match bool) f64 {
    mut object_out := f64(0)
    classname := StringName.new("InputEvent")
    fnname := StringName.new("get_action_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 801543509)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) is_canceled() bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    fnname := StringName.new("is_canceled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) is_pressed() bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    fnname := StringName.new("is_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) is_released() bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    fnname := StringName.new("is_released")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) is_echo() bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    fnname := StringName.new("is_echo")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) as_text() string {
    mut object_out := String{}
    classname := StringName.new("InputEvent")
    fnname := StringName.new("as_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &InputEvent) is_match(event InputEvent, exact_match bool) bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    fnname := StringName.new("is_match")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1754951977)
    mut args := unsafe { [2]voidptr{} }
    args[0] = event.ptr
    args[1] = unsafe{voidptr(&exact_match)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) is_action_type() bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    fnname := StringName.new("is_action_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputEvent) accumulate(with_event InputEvent) bool {
    mut object_out := false
    classname := StringName.new("InputEvent")
    fnname := StringName.new("accumulate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1062211774)
    mut args := unsafe { [1]voidptr{} }
    args[0] = with_event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InputEvent) xformed_by(xform Transform2D, local_ofs Vector2) InputEvent {
    mut object_out := InputEvent{}
    classname := StringName.new("InputEvent")
    fnname := StringName.new("xformed_by")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1282766827)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&xform)}
    args[1] = unsafe{voidptr(&local_ofs)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
