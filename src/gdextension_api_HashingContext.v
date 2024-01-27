module vgdextension

pub enum HashingContextHashType {
    hash_md5 = 0
    hash_sha1 = 1
    hash_sha256 = 2
}

pub type HashingContext = voidptr

pub fn (mut r HashingContext) start(type_name HashingContextHashType) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("HashingContext")
    defer { classname.deinit() }
    fnname := StringName.new("start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3940338335)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r HashingContext) update(chunk PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("HashingContext")
    defer { classname.deinit() }
    fnname := StringName.new("update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&chunk)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r HashingContext) finish() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("HashingContext")
    defer { classname.deinit() }
    fnname := StringName.new("finish")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
