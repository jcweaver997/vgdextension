module vgdextension

pub enum HashingContextHashType as i64 {
    hash_md5 = 0
    hash_sha1 = 1
    hash_sha256 = 2
}

@[noinit]
pub struct HashingContext {
    RefCounted
}

pub fn (r &HashingContext) start(type_name HashingContextHashType) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("HashingContext")
    fnname := StringName.new("start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3940338335)
    mut args := unsafe { [1]voidptr{} }
    i64_type_name := i64(type_name)
    args[0] = unsafe{voidptr(&i64_type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &HashingContext) update(chunk PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("HashingContext")
    fnname := StringName.new("update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&chunk)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &HashingContext) finish() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("HashingContext")
    fnname := StringName.new("finish")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
