module vgdextension

pub enum SceneStateGenEditState as i64 {
    gen_edit_state_disabled = 0
    gen_edit_state_instance = 1
    gen_edit_state_main = 2
    gen_edit_state_main_inherited = 3
}

@[noinit]
pub struct SceneState {
    RefCounted
}

pub fn (r &SceneState) get_node_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_node_type(idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &SceneState) get_node_name(idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &SceneState) get_node_path(idx i32, for_parent bool) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2272487792)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&for_parent)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_node_owner_path(idx i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_owner_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) is_node_instance_placeholder(idx i32) bool {
    mut object_out := false
    classname := StringName.new("SceneState")
    fnname := StringName.new("is_node_instance_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_node_instance_placeholder(idx i32) string {
    mut object_out := String{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_instance_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &SceneState) get_node_instance(idx i32) PackedScene {
    mut object_out := PackedScene{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_instance")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 511017218)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_node_groups(idx i32) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_groups")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 647634434)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_node_index(idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_index")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_node_property_count(idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_property_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_node_property_name(idx i32, prop_idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_property_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 351665558)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&prop_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &SceneState) get_node_property_value(idx i32, prop_idx i32) Variant {
    mut object_out := Variant{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_node_property_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 678354945)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    args[1] = unsafe{voidptr(&prop_idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_connection_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_connection_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_connection_source(idx i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_connection_source")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_connection_signal(idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_connection_signal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &SceneState) get_connection_target(idx i32) NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_connection_target")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 408788394)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_connection_method(idx i32) string {
    mut object_out := StringName{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_connection_method")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &SceneState) get_connection_flags(idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_connection_flags")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_connection_binds(idx i32) Array {
    mut object_out := Array{}
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_connection_binds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 663333327)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SceneState) get_connection_unbinds(idx i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("SceneState")
    fnname := StringName.new("get_connection_unbinds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&idx)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
