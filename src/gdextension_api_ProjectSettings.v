module vgdextension

@[noinit]
pub struct ProjectSettings {
    Object
}

pub fn ProjectSettings.get_singleton() ProjectSettings {
    sn := StringName.new("ProjectSettings")
    defer {sn.deinit()}
    o := ProjectSettings{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (r &ProjectSettings) has_setting(name String) bool {
    mut object_out := false
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("has_setting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ProjectSettings) set_setting(name String, value Variant) {
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_setting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ProjectSettings) get_setting(name String, default_value Variant) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_setting")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 223050753)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&default_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ProjectSettings) get_setting_with_override(name StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_setting_with_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ProjectSettings) get_global_class_list() Array {
    mut object_out := Array{}
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_global_class_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProjectSettings) set_order(name String, position i32) {
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ProjectSettings) get_order(name String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("get_order")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ProjectSettings) set_initial_value(name String, value Variant) {
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_initial_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ProjectSettings) set_as_basic(name String, basic bool) {
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_as_basic")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&basic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ProjectSettings) set_as_internal(name String, internal bool) {
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_as_internal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&internal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ProjectSettings) add_property_info(hint Dictionary) {
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("add_property_info")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ProjectSettings) set_restart_if_changed(name String, restart bool) {
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("set_restart_if_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&restart)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ProjectSettings) clear(name String) {
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ProjectSettings) localize_path(path String) String {
    mut object_out := String{}
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("localize_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ProjectSettings) globalize_path(path String) String {
    mut object_out := String{}
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("globalize_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ProjectSettings) save() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("save")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ProjectSettings) load_resource_pack(pack String, replace_files bool, offset i32) bool {
    mut object_out := false
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("load_resource_pack")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3001721055)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&pack)}
    args[1] = unsafe{voidptr(&replace_files)}
    args[2] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ProjectSettings) save_custom(file String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ProjectSettings")
    defer { classname.deinit() }
    fnname := StringName.new("save_custom")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
