module vgdextension

@[noinit]
pub struct X509Certificate {
    Resource
}

pub fn (mut r X509Certificate) save(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("X509Certificate")
    defer { classname.deinit() }
    fnname := StringName.new("save")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r X509Certificate) load(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("X509Certificate")
    defer { classname.deinit() }
    fnname := StringName.new("load")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r X509Certificate) save_to_string() String {
    mut object_out := String{}
    classname := StringName.new("X509Certificate")
    defer { classname.deinit() }
    fnname := StringName.new("save_to_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r X509Certificate) load_from_string(gdstring String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("X509Certificate")
    defer { classname.deinit() }
    fnname := StringName.new("load_from_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
