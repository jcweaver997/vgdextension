module vgdextension

@[noinit]
pub struct StreamPeer {
    RefCounted
}

pub fn (mut r StreamPeer) put_data(data PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r StreamPeer) put_partial_data(data PackedByteArray) Array {
    mut object_out := Array{}
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_partial_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2934048347)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_data(bytes i32) Array {
    mut object_out := Array{}
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171824711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_partial_data(bytes i32) Array {
    mut object_out := Array{}
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_partial_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1171824711)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &StreamPeer) get_available_bytes() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_available_bytes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) set_big_endian(enable bool) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("set_big_endian")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &StreamPeer) is_big_endian_enabled() bool {
    mut object_out := false
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("is_big_endian_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) put_8(value i8) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_8")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_u8(value u8) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_u8")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_16(value i16) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_16")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_u16(value u16) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_u16")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_32(value i32) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_32")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_u32(value u32) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_u32")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_64(value i64) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_64")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_u64(value u64) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_u64")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_float(value f64) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_float")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_double(value f64) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_double")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_string(value String) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_utf8_string(value String) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_utf8_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) put_var(value Variant, full_objects bool) {
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("put_var")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 738511890)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    args[1] = unsafe{voidptr(&full_objects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r StreamPeer) get_8() i8 {
    mut object_out := i8(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_8")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_u8() u8 {
    mut object_out := u8(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_u8")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_16() i16 {
    mut object_out := i16(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_16")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_u16() u16 {
    mut object_out := u16(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_u16")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_32() i32 {
    mut object_out := i32(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_32")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_u32() u32 {
    mut object_out := u32(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_u32")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_64() i64 {
    mut object_out := i64(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_64")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_u64() u64 {
    mut object_out := u64(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_u64")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_float() f64 {
    mut object_out := f64(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_float")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_double() f64 {
    mut object_out := f64(0)
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_double")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_string(bytes i32) String {
    mut object_out := String{}
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2309358862)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_utf8_string(bytes i32) String {
    mut object_out := String{}
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_utf8_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2309358862)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bytes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r StreamPeer) get_var(allow_objects bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("StreamPeer")
    fnname := StringName.new("get_var")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3442865206)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow_objects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
