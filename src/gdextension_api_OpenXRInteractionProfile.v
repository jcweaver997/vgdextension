module vgdextension

@[noinit]
pub struct OpenXRInteractionProfile {
    Resource
}

pub fn (mut r OpenXRInteractionProfile) set_interaction_profile_path(interaction_profile_path string) {
    classname := StringName.new("OpenXRInteractionProfile")
    fnname := StringName.new("set_interaction_profile_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(interaction_profile_path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInteractionProfile) get_interaction_profile_path() string {
    mut object_out := String{}
    classname := StringName.new("OpenXRInteractionProfile")
    fnname := StringName.new("get_interaction_profile_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OpenXRInteractionProfile) get_binding_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OpenXRInteractionProfile")
    fnname := StringName.new("get_binding_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OpenXRInteractionProfile) get_binding(index i32) OpenXRIPBinding {
    mut object_out := OpenXRIPBinding{}
    classname := StringName.new("OpenXRInteractionProfile")
    fnname := StringName.new("get_binding")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3934429652)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r OpenXRInteractionProfile) set_bindings(bindings Array) {
    classname := StringName.new("OpenXRInteractionProfile")
    fnname := StringName.new("set_bindings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bindings)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRInteractionProfile) get_bindings() Array {
    mut object_out := Array{}
    classname := StringName.new("OpenXRInteractionProfile")
    fnname := StringName.new("get_bindings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
