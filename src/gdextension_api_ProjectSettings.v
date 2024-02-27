module vgdextension

@[noinit]
pub struct ProjectSettings {
    Object
}

pub fn ProjectSettings.get_singleton() ProjectSettings {
    sn := StringName.new("ProjectSettings")
    o := ProjectSettings{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &ProjectSettings) has_setting(name string) bool {
    mut object_out := false
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("has_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ProjectSettings) set_setting(name string, value Variant) {
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("set_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProjectSettings) get_setting(name string, default_value Variant) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("get_setting")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 223050753)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&default_value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ProjectSettings) get_setting_with_override(name string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("get_setting_with_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ProjectSettings) get_global_class_list() Array {
    mut object_out := Array{}
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("get_global_class_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ProjectSettings) set_order(name string, position i32) {
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("set_order")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2956805083)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProjectSettings) get_order(name string) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("get_order")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ProjectSettings) set_initial_value(name string, value Variant) {
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("set_initial_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402577236)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ProjectSettings) set_as_basic(name string, basic bool) {
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("set_as_basic")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&basic)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ProjectSettings) set_as_internal(name string, internal bool) {
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("set_as_internal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&internal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ProjectSettings) add_property_info(hint Dictionary) {
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("add_property_info")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4155329257)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&hint)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ProjectSettings) set_restart_if_changed(name string, restart bool) {
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("set_restart_if_changed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2678287736)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&restart)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ProjectSettings) clear(name string) {
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ProjectSettings) localize_path(path string) string {
    mut object_out := String{}
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("localize_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &ProjectSettings) globalize_path(path string) string {
    mut object_out := String{}
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("globalize_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3135753539)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r ProjectSettings) save() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("save")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ProjectSettings) load_resource_pack(pack string, replace_files bool, offset i32) bool {
    mut object_out := false
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("load_resource_pack")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 708980503)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(pack)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&replace_files)}
    args[2] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ProjectSettings) save_custom(file string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ProjectSettings")
    fnname := StringName.new("save_custom")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(file)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
