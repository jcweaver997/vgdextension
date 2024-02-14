module vgdextension

@[noinit]
pub struct InputEventMIDI {
    InputEvent
}

pub fn (mut r InputEventMIDI) set_channel(channel i32) {
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("set_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&channel)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMIDI) get_channel() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("get_channel")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputEventMIDI) set_message(message MIDIMessage) {
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("set_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1064271510)
    mut args := unsafe { [1]voidptr{} }
    i64_message := i64(message)
    args[0] = unsafe{voidptr(&i64_message)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMIDI) get_message() MIDIMessage {
    mut object_out := i64(MIDIMessage.midi_message_none)
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("get_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1936512097)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{MIDIMessage(object_out)}
}
pub fn (mut r InputEventMIDI) set_pitch(pitch i32) {
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("set_pitch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pitch)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMIDI) get_pitch() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("get_pitch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputEventMIDI) set_velocity(velocity i32) {
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("set_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&velocity)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMIDI) get_velocity() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("get_velocity")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputEventMIDI) set_instrument(instrument i32) {
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("set_instrument")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&instrument)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMIDI) get_instrument() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("get_instrument")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputEventMIDI) set_pressure(pressure i32) {
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("set_pressure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressure)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMIDI) get_pressure() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("get_pressure")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputEventMIDI) set_controller_number(controller_number i32) {
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("set_controller_number")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&controller_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMIDI) get_controller_number() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("get_controller_number")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r InputEventMIDI) set_controller_value(controller_value i32) {
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("set_controller_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&controller_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventMIDI) get_controller_value() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    fnname := StringName.new("get_controller_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
