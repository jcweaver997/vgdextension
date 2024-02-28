module vgdextension

@[noinit]
pub struct HMACContext {
    RefCounted
}

pub fn (r &HMACContext) start(hash_type HashingContextHashType, key PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("HMACContext")
    fnname := StringName.new("start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3537364598)
    mut args := unsafe { [2]voidptr{} }
    i64_hash_type := i64(hash_type)
    args[0] = unsafe{voidptr(&i64_hash_type)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &HMACContext) update(data PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("HMACContext")
    fnname := StringName.new("update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &HMACContext) finish() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("HMACContext")
    fnname := StringName.new("finish")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
