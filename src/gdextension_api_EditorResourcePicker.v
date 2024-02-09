module vgdextension

pub struct EditorResourcePicker {
    HBoxContainer
}

pub interface IEditorResourcePickerSetCreateOptions {
    mut:
    virt_set_create_options(menu_node Object)
}

pub fn (mut r EditorResourcePicker) uset_create_options(menu_node Object) {
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("_set_create_options")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = menu_node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub interface IEditorResourcePickerHandleMenuSelected {
    mut:
    virt_handle_menu_selected(id i32) bool
}

pub fn (mut r EditorResourcePicker) uhandle_menu_selected(id i32) bool {
    mut object_out := false
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("_handle_menu_selected")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorResourcePicker) set_base_type(base_type String) {
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("set_base_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorResourcePicker) get_base_type() String {
    mut object_out := String{}
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("get_base_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorResourcePicker) get_allowed_types() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("get_allowed_types")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorResourcePicker) set_edited_resource(resource Resource) {
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("set_edited_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
    mut args := unsafe { [1]voidptr{} }
    args[0] = resource.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorResourcePicker) get_edited_resource() Resource {
    mut object_out := Resource{}
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("get_edited_resource")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2674603643)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorResourcePicker) set_toggle_mode(enable bool) {
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("set_toggle_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorResourcePicker) is_toggle_mode() bool {
    mut object_out := false
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("is_toggle_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorResourcePicker) set_toggle_pressed(pressed bool) {
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("set_toggle_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r EditorResourcePicker) set_editable(enable bool) {
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("set_editable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorResourcePicker) is_editable() bool {
    mut object_out := false
    classname := StringName.new("EditorResourcePicker")
    defer { classname.deinit() }
    fnname := StringName.new("is_editable")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
