module vgdextension

@[noinit]
pub struct OpenXRActionSet {
    Resource
}

pub fn (r &OpenXRActionSet) set_localized_name(localized_name string) {
    classname := StringName.new("OpenXRActionSet")
    fnname := StringName.new("set_localized_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(localized_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRActionSet) get_localized_name() string {
    mut object_out := String{}
    classname := StringName.new("OpenXRActionSet")
    fnname := StringName.new("get_localized_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OpenXRActionSet) set_priority(priority i32) {
    classname := StringName.new("OpenXRActionSet")
    fnname := StringName.new("set_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRActionSet) get_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OpenXRActionSet")
    fnname := StringName.new("get_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OpenXRActionSet) get_action_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OpenXRActionSet")
    fnname := StringName.new("get_action_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OpenXRActionSet) set_actions(actions Array) {
    classname := StringName.new("OpenXRActionSet")
    fnname := StringName.new("set_actions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&actions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRActionSet) get_actions() Array {
    mut object_out := Array{}
    classname := StringName.new("OpenXRActionSet")
    fnname := StringName.new("get_actions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &OpenXRActionSet) add_action(action OpenXRAction) {
    classname := StringName.new("OpenXRActionSet")
    fnname := StringName.new("add_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 349361333)
    mut args := unsafe { [1]voidptr{} }
    args[0] = action.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRActionSet) remove_action(action OpenXRAction) {
    classname := StringName.new("OpenXRActionSet")
    fnname := StringName.new("remove_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 349361333)
    mut args := unsafe { [1]voidptr{} }
    args[0] = action.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
