module vgdextension

pub enum ResourceSaverSaverFlags as i64 {
    flag_none = 0
    flag_relative_paths = 1
    flag_bundle_resources = 2
    flag_change_path = 4
    flag_omit_editor_properties = 8
    flag_save_big_endian = 16
    flag_compress = 32
    flag_replace_subresource_paths = 64
}

@[noinit]
pub struct ResourceSaver {
    Object
}

pub fn ResourceSaver.get_singleton() ResourceSaver {
    sn := StringName.new("ResourceSaver")
    o := ResourceSaver{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (mut r ResourceSaver) save(resource Resource, path String, flags ResourceSaverSaverFlags) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ResourceSaver")
    fnname := StringName.new("save")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2983274697)
    mut args := unsafe { [3]voidptr{} }
    args[0] = resource.ptr
    args[1] = unsafe{voidptr(&path)}
    i64_flags := i64(flags)
    args[2] = unsafe{voidptr(&i64_flags)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ResourceSaver) get_recognized_extensions(type_name Resource) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceSaver")
    fnname := StringName.new("get_recognized_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4223597960)
    mut args := unsafe { [1]voidptr{} }
    args[0] = type_name.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ResourceSaver) add_resource_format_saver(format_saver ResourceFormatSaver, at_front bool) {
    classname := StringName.new("ResourceSaver")
    fnname := StringName.new("add_resource_format_saver")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 362894272)
    mut args := unsafe { [2]voidptr{} }
    args[0] = format_saver.ptr
    args[1] = unsafe{voidptr(&at_front)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ResourceSaver) remove_resource_format_saver(format_saver ResourceFormatSaver) {
    classname := StringName.new("ResourceSaver")
    fnname := StringName.new("remove_resource_format_saver")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3373026878)
    mut args := unsafe { [1]voidptr{} }
    args[0] = format_saver.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
