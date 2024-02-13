module vgdextension

@[noinit]
pub struct ResourceFormatSaver {
    RefCounted
}

pub interface IResourceFormatSaverSave {
    mut:
    virt_save(resource Resource, path String, flags u32) GDError
}

pub fn (mut r ResourceFormatSaver) usave(resource Resource, path String, flags u32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ResourceFormatSaver")
    defer { classname.deinit() }
    fnname := StringName.new("_save")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = resource.ptr
    args[1] = unsafe{voidptr(&path)}
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IResourceFormatSaverSetUid {
    mut:
    virt_set_uid(path String, uid i64) GDError
}

pub fn (mut r ResourceFormatSaver) uset_uid(path String, uid i64) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ResourceFormatSaver")
    defer { classname.deinit() }
    fnname := StringName.new("_set_uid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&uid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IResourceFormatSaverRecognize {
    mut:
    virt_recognize(resource Resource) bool
}

pub fn (r &ResourceFormatSaver) urecognize(resource Resource) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatSaver")
    defer { classname.deinit() }
    fnname := StringName.new("_recognize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = resource.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IResourceFormatSaverGetRecognizedExtensions {
    mut:
    virt_get_recognized_extensions(resource Resource) PackedStringArray
}

pub fn (r &ResourceFormatSaver) uget_recognized_extensions(resource Resource) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatSaver")
    defer { classname.deinit() }
    fnname := StringName.new("_get_recognized_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = resource.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IResourceFormatSaverRecognizePath {
    mut:
    virt_recognize_path(resource Resource, path String) bool
}

pub fn (r &ResourceFormatSaver) urecognize_path(resource Resource, path String) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatSaver")
    defer { classname.deinit() }
    fnname := StringName.new("_recognize_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = resource.ptr
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
