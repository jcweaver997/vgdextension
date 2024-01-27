module vgdextension

pub type ZIPReader = voidptr

pub fn (mut r ZIPReader) open(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ZIPReader")
    defer { classname.deinit() }
    fnname := StringName.new("open")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ZIPReader) close() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ZIPReader")
    defer { classname.deinit() }
    fnname := StringName.new("close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ZIPReader) get_files() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ZIPReader")
    defer { classname.deinit() }
    fnname := StringName.new("get_files")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2981934095)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ZIPReader) read_file(path String, case_sensitive bool) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("ZIPReader")
    defer { classname.deinit() }
    fnname := StringName.new("read_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 156385007)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&case_sensitive)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
