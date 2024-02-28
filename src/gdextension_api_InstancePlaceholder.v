module vgdextension

@[noinit]
pub struct InstancePlaceholder {
    Node
}

pub fn (r &InstancePlaceholder) get_stored_values(with_order bool) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("InstancePlaceholder")
    fnname := StringName.new("get_stored_values")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2230153369)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&with_order)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InstancePlaceholder) create_instance(replace bool, custom_scene PackedScene) Node {
    mut object_out := Node{}
    classname := StringName.new("InstancePlaceholder")
    fnname := StringName.new("create_instance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3794612210)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&replace)}
    args[1] = custom_scene.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &InstancePlaceholder) get_instance_path() string {
    mut object_out := String{}
    classname := StringName.new("InstancePlaceholder")
    fnname := StringName.new("get_instance_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
