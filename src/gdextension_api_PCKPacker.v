module vgdextension

@[noinit]
pub struct PCKPacker {
    RefCounted
}

pub fn (r &PCKPacker) pck_start(pck_name string, alignment i32, key string, encrypt_directory bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PCKPacker")
    fnname := StringName.new("pck_start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 508410629)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := String.new(pck_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&alignment)}
    arg_sn2 := String.new(key)
    args[2] = unsafe{voidptr(&arg_sn2)}
    args[3] = unsafe{voidptr(&encrypt_directory)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PCKPacker) add_file(pck_path string, source_path string, encrypt bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PCKPacker")
    fnname := StringName.new("add_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2215643711)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(pck_path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(source_path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&encrypt)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PCKPacker) flush(verbose bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PCKPacker")
    fnname := StringName.new("flush")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1633102583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&verbose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
