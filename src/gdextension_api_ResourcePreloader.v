module vgdextension

pub type ResourcePreloader = voidptr

pub fn (mut r ResourcePreloader) add_resource(name StringName, resource Resource) {
    classname := StringName.new("ResourcePreloader")
    defer { classname.deinit() }
    fnname := StringName.new("add_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1168801743)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ResourcePreloader) remove_resource(name StringName) {
    classname := StringName.new("ResourcePreloader")
    defer { classname.deinit() }
    fnname := StringName.new("remove_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ResourcePreloader) rename_resource(name StringName, newname StringName) {
    classname := StringName.new("ResourcePreloader")
    defer { classname.deinit() }
    fnname := StringName.new("rename_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ResourcePreloader) has_resource(name StringName) bool {
    mut object_out := false
    classname := StringName.new("ResourcePreloader")
    defer { classname.deinit() }
    fnname := StringName.new("has_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourcePreloader) get_resource(name StringName) Resource {
    mut object_out := Resource(unsafe{nil})
    classname := StringName.new("ResourcePreloader")
    defer { classname.deinit() }
    fnname := StringName.new("get_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3742749261)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourcePreloader) get_resource_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourcePreloader")
    defer { classname.deinit() }
    fnname := StringName.new("get_resource_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
