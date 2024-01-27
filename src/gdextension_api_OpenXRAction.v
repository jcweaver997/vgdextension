pub enum OpenXRActionActionType {
    openxr_action_bool = 0
    openxr_action_float = 1
    openxr_action_vector2 = 2
    openxr_action_pose = 3
}

pub type OpenXRAction = voidptr

pub fn (mut r OpenXRAction) set_localized_name(localized_name String) {
    classname := StringName.new("OpenXRAction")
    defer { classname.deinit() }
    fnname := StringName.new("set_localized_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OpenXRAction) get_localized_name() String {
    mut object_out := String{}
    classname := StringName.new("OpenXRAction")
    defer { classname.deinit() }
    fnname := StringName.new("get_localized_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRAction) set_action_type(action_type OpenXRActionActionType) {
    classname := StringName.new("OpenXRAction")
    defer { classname.deinit() }
    fnname := StringName.new("set_action_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1675238366)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OpenXRAction) get_action_type() OpenXRActionActionType {
    mut object_out := OpenXRActionActionType.openxr_action_bool
    classname := StringName.new("OpenXRAction")
    defer { classname.deinit() }
    fnname := StringName.new("get_action_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536542431)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r OpenXRAction) set_toplevel_paths(toplevel_paths PackedStringArray) {
    classname := StringName.new("OpenXRAction")
    defer { classname.deinit() }
    fnname := StringName.new("set_toplevel_paths")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &OpenXRAction) get_toplevel_paths() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OpenXRAction")
    defer { classname.deinit() }
    fnname := StringName.new("get_toplevel_paths")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
