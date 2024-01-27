pub type InstancePlaceholder = voidptr

pub fn (mut r InstancePlaceholder) get_stored_values(with_order bool) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("InstancePlaceholder")
    defer { classname.deinit() }
    fnname := StringName.new("get_stored_values")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230153369)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&with_order)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r InstancePlaceholder) create_instance(replace bool, custom_scene PackedScene) Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("InstancePlaceholder")
    defer { classname.deinit() }
    fnname := StringName.new("create_instance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3794612210)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&replace)}
    args[1] = unsafe{voidptr(&custom_scene)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &InstancePlaceholder) get_instance_path() String {
    mut object_out := String{}
    classname := StringName.new("InstancePlaceholder")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
