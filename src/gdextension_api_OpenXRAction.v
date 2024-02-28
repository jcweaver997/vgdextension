module vgdextension

pub enum OpenXRActionActionType as i64 {
    openxr_action_bool = 0
    openxr_action_float = 1
    openxr_action_vector2 = 2
    openxr_action_pose = 3
}

@[noinit]
pub struct OpenXRAction {
    Resource
}

pub fn (r &OpenXRAction) set_localized_name(localized_name string) {
    classname := StringName.new("OpenXRAction")
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
pub fn (r &OpenXRAction) get_localized_name() string {
    mut object_out := String{}
    classname := StringName.new("OpenXRAction")
    fnname := StringName.new("get_localized_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &OpenXRAction) set_action_type(action_type OpenXRActionActionType) {
    classname := StringName.new("OpenXRAction")
    fnname := StringName.new("set_action_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1675238366)
    mut args := unsafe { [1]voidptr{} }
    i64_action_type := i64(action_type)
    args[0] = unsafe{voidptr(&i64_action_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRAction) get_action_type() OpenXRActionActionType {
    mut object_out := i64(OpenXRActionActionType.openxr_action_bool)
    classname := StringName.new("OpenXRAction")
    fnname := StringName.new("get_action_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3536542431)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{OpenXRActionActionType(object_out)}
}
pub fn (r &OpenXRAction) set_toplevel_paths(toplevel_paths PackedStringArray) {
    classname := StringName.new("OpenXRAction")
    fnname := StringName.new("set_toplevel_paths")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4015028928)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&toplevel_paths)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &OpenXRAction) get_toplevel_paths() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("OpenXRAction")
    fnname := StringName.new("get_toplevel_paths")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
