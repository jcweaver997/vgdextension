module vgdextension

pub enum AnimationNodeBlendSpace1DBlendMode as i64 {
    blend_mode_interpolated = 0
    blend_mode_discrete = 1
    blend_mode_discrete_carry = 2
}

@[noinit]
pub struct AnimationNodeBlendSpace1D {
    AnimationRootNode
}

pub fn (mut r AnimationNodeBlendSpace1D) add_blend_point(node AnimationRootNode, pos f64, at_index i32) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("add_blend_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 285050433)
    mut args := unsafe { [3]voidptr{} }
    args[0] = node.ptr
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&at_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationNodeBlendSpace1D) set_blend_point_position(point i32, pos f64) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("set_blend_point_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1602489585)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace1D) get_blend_point_position(point i32) f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("get_blend_point_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2339986948)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_blend_point_node(point i32, node AnimationRootNode) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("set_blend_point_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4240341528)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace1D) get_blend_point_node(point i32) AnimationRootNode {
    mut object_out := AnimationRootNode{}
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("get_blend_point_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 665599029)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) remove_blend_point(point i32) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("remove_blend_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace1D) get_blend_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("get_blend_point_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_min_space(min_space f64) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("set_min_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min_space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace1D) get_min_space() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("get_min_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_max_space(max_space f64) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("set_max_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace1D) get_max_space() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("get_max_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_snap(snap f64) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("set_snap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&snap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace1D) get_snap() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("get_snap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationNodeBlendSpace1D) set_value_label(text string) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("set_value_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace1D) get_value_label() string {
    mut object_out := String{}
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("get_value_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r AnimationNodeBlendSpace1D) set_blend_mode(mode AnimationNodeBlendSpace1DBlendMode) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("set_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2600869457)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace1D) get_blend_mode() AnimationNodeBlendSpace1DBlendMode {
    mut object_out := i64(AnimationNodeBlendSpace1DBlendMode.blend_mode_interpolated)
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("get_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1547667849)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationNodeBlendSpace1DBlendMode(object_out)}
}
pub fn (mut r AnimationNodeBlendSpace1D) set_use_sync(enable bool) {
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("set_use_sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace1D) is_using_sync() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeBlendSpace1D")
    fnname := StringName.new("is_using_sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
