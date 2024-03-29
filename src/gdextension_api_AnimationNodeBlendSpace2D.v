module vgdextension

pub enum AnimationNodeBlendSpace2DBlendMode as i64 {
    blend_mode_interpolated = 0
    blend_mode_discrete = 1
    blend_mode_discrete_carry = 2
}

@[noinit]
pub struct AnimationNodeBlendSpace2D {
    AnimationRootNode
}

pub fn (r &AnimationNodeBlendSpace2D) add_blend_point(node AnimationRootNode, pos Vector2, at_index i32) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("add_blend_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 402261981)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&node.ptr)
    args[1] = unsafe{voidptr(&pos)}
    args[2] = unsafe{voidptr(&at_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) set_blend_point_position(point i32, pos Vector2) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("set_blend_point_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 163021252)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = unsafe{voidptr(&pos)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_blend_point_position(point i32) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_blend_point_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2299179447)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeBlendSpace2D) set_blend_point_node(point i32, node AnimationRootNode) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("set_blend_point_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4240341528)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    args[1] = voidptr(&node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_blend_point_node(point i32) AnimationRootNode {
    mut object_out := AnimationRootNode{}
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_blend_point_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 665599029)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeBlendSpace2D) remove_blend_point(point i32) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("remove_blend_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_blend_point_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_blend_point_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeBlendSpace2D) add_triangle(x i32, y i32, z i32, at_index i32) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("add_triangle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 753017335)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&x)}
    args[1] = unsafe{voidptr(&y)}
    args[2] = unsafe{voidptr(&z)}
    args[3] = unsafe{voidptr(&at_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_triangle_point(triangle i32, point i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_triangle_point")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 50157827)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&triangle)}
    args[1] = unsafe{voidptr(&point)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeBlendSpace2D) remove_triangle(triangle i32) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("remove_triangle")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&triangle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_triangle_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_triangle_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeBlendSpace2D) set_min_space(min_space Vector2) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("set_min_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min_space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_min_space() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_min_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeBlendSpace2D) set_max_space(max_space Vector2) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("set_max_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max_space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_max_space() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_max_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeBlendSpace2D) set_snap(snap Vector2) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("set_snap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&snap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_snap() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_snap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeBlendSpace2D) set_x_label(text string) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("set_x_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_x_label() string {
    mut object_out := String{}
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_x_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimationNodeBlendSpace2D) set_y_label(text string) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("set_y_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_y_label() string {
    mut object_out := String{}
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_y_label")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &AnimationNodeBlendSpace2D) set_auto_triangles(enable bool) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("set_auto_triangles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_auto_triangles() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_auto_triangles")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationNodeBlendSpace2D) set_blend_mode(mode AnimationNodeBlendSpace2DBlendMode) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("set_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 81193520)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) get_blend_mode() AnimationNodeBlendSpace2DBlendMode {
    mut object_out := i64(AnimationNodeBlendSpace2DBlendMode.blend_mode_interpolated)
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("get_blend_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1398433632)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationNodeBlendSpace2DBlendMode(object_out)}
}
pub fn (r &AnimationNodeBlendSpace2D) set_use_sync(enable bool) {
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("set_use_sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendSpace2D) is_using_sync() bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeBlendSpace2D")
    fnname := StringName.new("is_using_sync")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
