module vgdextension

@[noinit]
pub struct ResourcePreloader {
    Node
}

pub fn (mut r ResourcePreloader) add_resource(name string, resource Resource) {
    classname := StringName.new("ResourcePreloader")
    fnname := StringName.new("add_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1168801743)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = resource.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ResourcePreloader) remove_resource(name string) {
    classname := StringName.new("ResourcePreloader")
    fnname := StringName.new("remove_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ResourcePreloader) rename_resource(name string, newname string) {
    classname := StringName.new("ResourcePreloader")
    fnname := StringName.new("rename_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(newname)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ResourcePreloader) has_resource(name string) bool {
    mut object_out := false
    classname := StringName.new("ResourcePreloader")
    fnname := StringName.new("has_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourcePreloader) get_resource(name string) Resource {
    mut object_out := Resource{}
    classname := StringName.new("ResourcePreloader")
    fnname := StringName.new("get_resource")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3742749261)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourcePreloader) get_resource_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ResourcePreloader")
    fnname := StringName.new("get_resource_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
