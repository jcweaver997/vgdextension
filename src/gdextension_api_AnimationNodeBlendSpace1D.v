module vgdextension

pub enum AnimationNodeBlendSpace1DBlendMode {
    blend_mode_interpolated = 0
    blend_mode_discrete = 1
    blend_mode_discrete_carry = 2
}

pub struct AnimationNodeBlendSpace1D {
    AnimationRootNode
}

pub fn (mut r AnimationNodeBlendSpace1D) add_blend_point(node AnimationRootNode, pos f64, at_index i32) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("add_blend_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4069484420)
    mut args := unsafe { [3]voidptr{} }
    args[0] = node.ptr
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&at_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r AnimationNodeBlendSpace1D) set_blend_point_position(point i32, pos f64) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeBlendSpace1D) get_blend_point_position(point i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_point_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_blend_point_node(point i32, node AnimationRootNode) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_point_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4240341528)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeBlendSpace1D) get_blend_point_node(point i32) AnimationRootNode {
    mut object_out := AnimationRootNode{}
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_point_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 665599029)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) remove_blend_point(point i32) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("remove_blend_point")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeBlendSpace1D) get_blend_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_point_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_min_space(min_space f64) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_min_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min_space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeBlendSpace1D) get_min_space() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("get_min_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_max_space(max_space f64) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeBlendSpace1D) get_max_space() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_snap(snap f64) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_snap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&snap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeBlendSpace1D) get_snap() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("get_snap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_value_label(text String) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_value_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeBlendSpace1D) get_value_label() String {
    mut object_out := String{}
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("get_value_label")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_blend_mode(mode AnimationNodeBlendSpace1DBlendMode) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2600869457)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeBlendSpace1D) get_blend_mode() AnimationNodeBlendSpace1DBlendMode {
    mut object_out := AnimationNodeBlendSpace1DBlendMode.blend_mode_interpolated
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("get_blend_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1547667849)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_use_sync(enable bool) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &AnimationNodeBlendSpace1D) is_using_sync() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeBlendSpace1D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_sync")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
