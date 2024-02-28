module vgdextension

pub enum AESContextMode as i64 {
    mode_ecb_encrypt = 0
    mode_ecb_decrypt = 1
    mode_cbc_encrypt = 2
    mode_cbc_decrypt = 3
    mode_max = 4
}

@[noinit]
pub struct AESContext {
    RefCounted
}

pub fn (r &AESContext) start(mode AESContextMode, key PackedByteArray, iv PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("AESContext")
    fnname := StringName.new("start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3122411423)
    mut args := unsafe { [3]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&iv)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &AESContext) update(src PackedByteArray) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("AESContext")
    fnname := StringName.new("update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 527836100)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&src)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AESContext) get_iv_state() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("AESContext")
    fnname := StringName.new("get_iv_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AESContext) finish() {
    classname := StringName.new("AESContext")
    fnname := StringName.new("finish")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
