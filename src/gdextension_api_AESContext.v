module vgdextension

pub enum AESContextMode {
    mode_ecb_encrypt = 0
    mode_ecb_decrypt = 1
    mode_cbc_encrypt = 2
    mode_cbc_decrypt = 3
    mode_max = 4
}

pub type AESContext = voidptr

pub fn (mut r AESContext) start(mode AESContextMode, key PackedByteArray, iv PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("AESContext")
    defer { classname.deinit() }
    fnname := StringName.new("start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3167574919)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&iv)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AESContext) update(src PackedByteArray) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("AESContext")
    defer { classname.deinit() }
    fnname := StringName.new("update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 527836100)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&src)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AESContext) get_iv_state() PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("AESContext")
    defer { classname.deinit() }
    fnname := StringName.new("get_iv_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2115431945)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AESContext) finish() {
    classname := StringName.new("AESContext")
    defer { classname.deinit() }
    fnname := StringName.new("finish")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
