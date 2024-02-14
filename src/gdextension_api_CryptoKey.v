module vgdextension

@[noinit]
pub struct CryptoKey {
    Resource
}

pub fn (mut r CryptoKey) save(path String, public_only bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("CryptoKey")
    fnname := StringName.new("save")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 885841341)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&public_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r CryptoKey) load(path String, public_only bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("CryptoKey")
    fnname := StringName.new("load")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 885841341)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&public_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &CryptoKey) is_public_only() bool {
    mut object_out := false
    classname := StringName.new("CryptoKey")
    fnname := StringName.new("is_public_only")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CryptoKey) save_to_string(public_only bool) String {
    mut object_out := String{}
    classname := StringName.new("CryptoKey")
    fnname := StringName.new("save_to_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 32795936)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&public_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r CryptoKey) load_from_string(string_key String, public_only bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("CryptoKey")
    fnname := StringName.new("load_from_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 885841341)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&string_key)}
    args[1] = unsafe{voidptr(&public_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
