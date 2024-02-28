module vgdextension

pub enum AnimationTreeAnimationProcessCallback as i64 {
    animation_process_physics = 0
    animation_process_idle = 1
    animation_process_manual = 2
}

@[noinit]
pub struct AnimationTree {
    AnimationMixer
}

pub fn (r &AnimationTree) set_tree_root(animation_node AnimationRootNode) {
    classname := StringName.new("AnimationTree")
    fnname := StringName.new("set_tree_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2581683800)
    mut args := unsafe { [1]voidptr{} }
    args[0] = animation_node.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationTree) get_tree_root() AnimationRootNode {
    mut object_out := AnimationRootNode{}
    classname := StringName.new("AnimationTree")
    fnname := StringName.new("get_tree_root")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4110384712)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationTree) set_advance_expression_base_node(path NodePath) {
    classname := StringName.new("AnimationTree")
    fnname := StringName.new("set_advance_expression_base_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationTree) get_advance_expression_base_node() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("AnimationTree")
    fnname := StringName.new("get_advance_expression_base_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationTree) set_animation_player(path NodePath) {
    classname := StringName.new("AnimationTree")
    fnname := StringName.new("set_animation_player")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationTree) get_animation_player() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("AnimationTree")
    fnname := StringName.new("get_animation_player")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &AnimationTree) set_process_callback(mode AnimationTreeAnimationProcessCallback) {
    classname := StringName.new("AnimationTree")
    fnname := StringName.new("set_process_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1723352826)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationTree) get_process_callback() AnimationTreeAnimationProcessCallback {
    mut object_out := i64(AnimationTreeAnimationProcessCallback.animation_process_physics)
    classname := StringName.new("AnimationTree")
    fnname := StringName.new("get_process_callback")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 891317132)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationTreeAnimationProcessCallback(object_out)}
}
