module vgdextension

pub enum ResourceSaverSaverFlags {
    flag_none = 0
    flag_relative_paths = 1
    flag_bundle_resources = 2
    flag_change_path = 4
    flag_omit_editor_properties = 8
    flag_save_big_endian = 16
    flag_compress = 32
    flag_replace_subresource_paths = 64
}

pub type ResourceSaver = voidptr

pub fn (mut r ResourceSaver) save(resource Resource, path String, flags ResourceSaverSaverFlags) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ResourceSaver")
    defer { classname.deinit() }
    fnname := StringName.new("save")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2303056517)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&resource)}
    args[1] = unsafe{voidptr(&path)}
    args[2] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceSaver) get_recognized_extensions(type_name Resource) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourceSaver")
    defer { classname.deinit() }
    fnname := StringName.new("get_recognized_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4223597960)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceSaver) add_resource_format_saver(format_saver ResourceFormatSaver, at_front bool) {
    classname := StringName.new("ResourceSaver")
    defer { classname.deinit() }
    fnname := StringName.new("add_resource_format_saver")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 362894272)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ResourceSaver) remove_resource_format_saver(format_saver ResourceFormatSaver) {
    classname := StringName.new("ResourceSaver")
    defer { classname.deinit() }
    fnname := StringName.new("remove_resource_format_saver")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3373026878)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
