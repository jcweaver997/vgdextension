module vgdextension

pub type OpenXRInteractionProfile = voidptr

pub fn (mut r OpenXRInteractionProfile) set_interaction_profile_path(interaction_profile_path String) {
    classname := StringName.new("OpenXRInteractionProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_interaction_profile_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OpenXRInteractionProfile) get_interaction_profile_path() String {
    mut object_out := String{}
    classname := StringName.new("OpenXRInteractionProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_interaction_profile_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRInteractionProfile) get_binding_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OpenXRInteractionProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_binding_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRInteractionProfile) get_binding(index i32) OpenXRIPBinding {
    mut object_out := OpenXRIPBinding(unsafe{nil})
    classname := StringName.new("OpenXRInteractionProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_binding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3934429652)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRInteractionProfile) set_bindings(bindings Array) {
    classname := StringName.new("OpenXRInteractionProfile")
    defer { classname.deinit() }
    fnname := StringName.new("set_bindings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OpenXRInteractionProfile) get_bindings() Array {
    mut object_out := Array{}
    classname := StringName.new("OpenXRInteractionProfile")
    defer { classname.deinit() }
    fnname := StringName.new("get_bindings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
