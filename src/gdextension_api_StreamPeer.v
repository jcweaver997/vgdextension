module vgdextension

pub type StreamPeer = voidptr

pub fn (mut r StreamPeer) put_data(data PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) put_partial_data(data PackedByteArray) Array {
    mut object_out := Array{}
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_partial_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2934048347)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_data(bytes i32) Array {
    mut object_out := Array{}
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171824711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_partial_data(bytes i32) Array {
    mut object_out := Array{}
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_partial_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171824711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &StreamPeer) get_available_bytes() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_available_bytes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) set_big_endian(enable bool) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("set_big_endian")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &StreamPeer) is_big_endian_enabled() bool {
    mut object_out := false
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("is_big_endian_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) put_8(value i32) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_8")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_u8(value i32) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_u8")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_16(value i32) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_16")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_u16(value i32) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_u16")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_32(value i32) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_32")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_u32(value i32) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_u32")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_64(value i32) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_64")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_u64(value i32) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_u64")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_float(value f32) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_float")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_double(value f32) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_double")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_string(value String) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_utf8_string(value String) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_utf8_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) put_var(value Variant, full_objects bool) {
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("put_var")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 738511890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r StreamPeer) get_8() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_8")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_u8() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_u8")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_16() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_16")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_u16() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_u16")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_32() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_32")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_u32() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_u32")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_64() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_64")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_u64() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_u64")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_float() f32 {
    mut object_out := f32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_float")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_double() f32 {
    mut object_out := f32(0)
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_double")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_string(bytes i32) String {
    mut object_out := String{}
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2309358862)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_utf8_string(bytes i32) String {
    mut object_out := String{}
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_utf8_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2309358862)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r StreamPeer) get_var(allow_objects bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("StreamPeer")
    defer { classname.deinit() }
    fnname := StringName.new("get_var")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3442865206)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow_objects)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
