module vgdextension

@[noinit]
pub struct ResourceFormatSaver {
    RefCounted
}

pub interface IResourceFormatSaverSave {
    mut:
    virt_save(resource Resource, path String, flags u32) GDError
}

pub fn (mut r ResourceFormatSaver) usave(resource Resource, path string, flags u32) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ResourceFormatSaver")
    fnname := StringName.new("_save")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = resource.ptr
    arg_sn1 := String.new(path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IResourceFormatSaverSetUid {
    mut:
    virt_set_uid(path String, uid i64) GDError
}

pub fn (mut r ResourceFormatSaver) uset_uid(path string, uid i64) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ResourceFormatSaver")
    fnname := StringName.new("_set_uid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&uid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub interface IResourceFormatSaverRecognize {
    mut:
    virt_recognize(resource Resource) bool
}

pub fn (r &ResourceFormatSaver) urecognize(resource Resource) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatSaver")
    fnname := StringName.new("_recognize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = resource.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatSaverGetRecognizedExtensions {
    mut:
    virt_get_recognized_extensions(resource Resource) PackedStringArray
}

pub fn (r &ResourceFormatSaver) uget_recognized_extensions(resource Resource) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatSaver")
    fnname := StringName.new("_get_recognized_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = resource.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IResourceFormatSaverRecognizePath {
    mut:
    virt_recognize_path(resource Resource, path String) bool
}

pub fn (r &ResourceFormatSaver) urecognize_path(resource Resource, path string) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatSaver")
    fnname := StringName.new("_recognize_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = resource.ptr
    arg_sn1 := String.new(path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
