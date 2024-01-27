pub type ResourceFormatSaver = voidptr

pub fn (mut r ResourceFormatSaver) usave(resource Resource, path String, flags i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ResourceFormatSaver")
    defer { classname.deinit() }
    fnname := StringName.new("_save")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&resource)}
    args[1] = unsafe{voidptr(&path)}
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceFormatSaver) uset_uid(path String, uid i32) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ResourceFormatSaver")
    defer { classname.deinit() }
    fnname := StringName.new("_set_uid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&uid)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatSaver) urecognize(resource Resource) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatSaver")
    defer { classname.deinit() }
    fnname := StringName.new("_recognize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&resource)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatSaver) uget_recognized_extensions(resource Resource) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceFormatSaver")
    defer { classname.deinit() }
    fnname := StringName.new("_get_recognized_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&resource)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceFormatSaver) urecognize_path(resource Resource, path String) bool {
    mut object_out := false
    classname := StringName.new("ResourceFormatSaver")
    defer { classname.deinit() }
    fnname := StringName.new("_recognize_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&resource)}
    args[1] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
