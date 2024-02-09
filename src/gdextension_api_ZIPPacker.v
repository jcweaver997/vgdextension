module vgdextension

pub enum ZIPPackerZipAppend {
    append_create = 0
    append_createafter = 1
    append_addinzip = 2
}

pub struct ZIPPacker {
    RefCounted
}

pub fn (mut r ZIPPacker) open(path String, append ZIPPackerZipAppend) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ZIPPacker")
    defer { classname.deinit() }
    fnname := StringName.new("open")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3715508516)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&append)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ZIPPacker) start_file(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ZIPPacker")
    defer { classname.deinit() }
    fnname := StringName.new("start_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ZIPPacker) write_file(data PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ZIPPacker")
    defer { classname.deinit() }
    fnname := StringName.new("write_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ZIPPacker) close_file() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ZIPPacker")
    defer { classname.deinit() }
    fnname := StringName.new("close_file")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ZIPPacker) close() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ZIPPacker")
    defer { classname.deinit() }
    fnname := StringName.new("close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
