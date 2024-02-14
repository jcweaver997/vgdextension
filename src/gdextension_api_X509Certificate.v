module vgdextension

@[noinit]
pub struct X509Certificate {
    Resource
}

pub fn (mut r X509Certificate) save(path String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("X509Certificate")
    fnname := StringName.new("save")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r X509Certificate) load(path String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("X509Certificate")
    fnname := StringName.new("load")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r X509Certificate) save_to_string() String {
    mut object_out := String{}
    classname := StringName.new("X509Certificate")
    fnname := StringName.new("save_to_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r X509Certificate) load_from_string(gdstring String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("X509Certificate")
    fnname := StringName.new("load_from_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
