module vgdextension

pub struct HMACContext {
    RefCounted
}

pub fn (mut r HMACContext) start(hash_type HashingContextHashType, key PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("HMACContext")
    defer { classname.deinit() }
    fnname := StringName.new("start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3537364598)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&hash_type)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r HMACContext) update(data PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("HMACContext")
    defer { classname.deinit() }
    fnname := StringName.new("update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r HMACContext) finish() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("HMACContext")
    defer { classname.deinit() }
    fnname := StringName.new("finish")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
