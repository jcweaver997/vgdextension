module vgdextension

pub struct EditorScriptPicker {
    EditorResourcePicker
}

pub fn (mut r EditorScriptPicker) set_script_owner(owner_node Node) {
    classname := StringName.new("EditorScriptPicker")
    defer { classname.deinit() }
    fnname := StringName.new("set_script_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = owner_node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &EditorScriptPicker) get_script_owner() Node {
    mut object_out := Node{}
    classname := StringName.new("EditorScriptPicker")
    defer { classname.deinit() }
    fnname := StringName.new("get_script_owner")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
