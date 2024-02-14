module vgdextension

pub enum ZIPPackerZipAppend as i64 {
    append_create = 0
    append_createafter = 1
    append_addinzip = 2
}

@[noinit]
pub struct ZIPPacker {
    RefCounted
}

pub fn (mut r ZIPPacker) open(path String, append ZIPPackerZipAppend) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ZIPPacker")
    fnname := StringName.new("open")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1936816515)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    i64_append := i64(append)
    args[1] = unsafe{voidptr(&i64_append)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ZIPPacker) start_file(path String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ZIPPacker")
    fnname := StringName.new("start_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ZIPPacker) write_file(data PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ZIPPacker")
    fnname := StringName.new("write_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 680677267)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ZIPPacker) close_file() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ZIPPacker")
    fnname := StringName.new("close_file")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ZIPPacker) close() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ZIPPacker")
    fnname := StringName.new("close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
