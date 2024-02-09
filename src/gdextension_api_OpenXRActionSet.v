module vgdextension

pub struct OpenXRActionSet {
    Resource
}

pub fn (mut r OpenXRActionSet) set_localized_name(localized_name String) {
    classname := StringName.new("OpenXRActionSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_localized_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&localized_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRActionSet) get_localized_name() String {
    mut object_out := String{}
    classname := StringName.new("OpenXRActionSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_localized_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRActionSet) set_priority(priority i32) {
    classname := StringName.new("OpenXRActionSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRActionSet) get_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OpenXRActionSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &OpenXRActionSet) get_action_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("OpenXRActionSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRActionSet) set_actions(actions Array) {
    classname := StringName.new("OpenXRActionSet")
    defer { classname.deinit() }
    fnname := StringName.new("set_actions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&actions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &OpenXRActionSet) get_actions() Array {
    mut object_out := Array{}
    classname := StringName.new("OpenXRActionSet")
    defer { classname.deinit() }
    fnname := StringName.new("get_actions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRActionSet) add_action(action OpenXRAction) {
    classname := StringName.new("OpenXRActionSet")
    defer { classname.deinit() }
    fnname := StringName.new("add_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 349361333)
    mut args := unsafe { [1]voidptr{} }
    args[0] = action.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r OpenXRActionSet) remove_action(action OpenXRAction) {
    classname := StringName.new("OpenXRActionSet")
    defer { classname.deinit() }
    fnname := StringName.new("remove_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 349361333)
    mut args := unsafe { [1]voidptr{} }
    args[0] = action.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
