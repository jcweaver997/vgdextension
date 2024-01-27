pub type PCKPacker = voidptr

pub fn (mut r PCKPacker) pck_start(pck_name String, alignment i32, key String, encrypt_directory bool) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PCKPacker")
    defer { classname.deinit() }
    fnname := StringName.new("pck_start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3232891339)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&pck_name)}
    args[1] = unsafe{voidptr(&alignment)}
    args[2] = unsafe{voidptr(&key)}
    args[3] = unsafe{voidptr(&encrypt_directory)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PCKPacker) add_file(pck_path String, source_path String, encrypt bool) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PCKPacker")
    defer { classname.deinit() }
    fnname := StringName.new("add_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2215643711)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&pck_path)}
    args[1] = unsafe{voidptr(&source_path)}
    args[2] = unsafe{voidptr(&encrypt)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PCKPacker) flush(verbose bool) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PCKPacker")
    defer { classname.deinit() }
    fnname := StringName.new("flush")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1633102583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&verbose)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
