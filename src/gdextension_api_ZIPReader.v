module vgdextension

@[noinit]
pub struct ZIPReader {
    RefCounted
}

pub fn (r &ZIPReader) open(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ZIPReader")
    fnname := StringName.new("open")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ZIPReader) close() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ZIPReader")
    fnname := StringName.new("close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ZIPReader) get_files() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ZIPReader")
    fnname := StringName.new("get_files")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ZIPReader) read_file(path string, case_sensitive bool) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("ZIPReader")
    fnname := StringName.new("read_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 740857591)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&case_sensitive)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ZIPReader) file_exists(path string, case_sensitive bool) bool {
    mut object_out := false
    classname := StringName.new("ZIPReader")
    fnname := StringName.new("file_exists")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 35364943)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&case_sensitive)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
