pub type InputEventMIDI = voidptr

pub fn (mut r InputEventMIDI) set_channel(channel i32) {
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("set_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMIDI) get_channel() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("get_channel")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMIDI) set_message(message MIDIMessage) {
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("set_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1064271510)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMIDI) get_message() MIDIMessage {
    mut object_out := MIDIMessage.midi_message_none
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("get_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1936512097)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMIDI) set_pitch(pitch i32) {
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("set_pitch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMIDI) get_pitch() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("get_pitch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMIDI) set_velocity(velocity i32) {
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("set_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMIDI) get_velocity() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("get_velocity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMIDI) set_instrument(instrument i32) {
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("set_instrument")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMIDI) get_instrument() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("get_instrument")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMIDI) set_pressure(pressure i32) {
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressure")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMIDI) get_pressure() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("get_pressure")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMIDI) set_controller_number(controller_number i32) {
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("set_controller_number")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMIDI) get_controller_number() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("get_controller_number")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventMIDI) set_controller_value(controller_value i32) {
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("set_controller_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &InputEventMIDI) get_controller_value() i32 {
    mut object_out := i32(0)
    classname := StringName.new("InputEventMIDI")
    defer { classname.deinit() }
    fnname := StringName.new("get_controller_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
