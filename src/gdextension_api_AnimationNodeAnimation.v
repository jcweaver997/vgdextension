module vgdextension

pub enum AnimationNodeAnimationPlayMode as i64 {
    play_mode_forward = 0
    play_mode_backward = 1
}

@[noinit]
pub struct AnimationNodeAnimation {
    AnimationRootNode
}

pub fn (mut r AnimationNodeAnimation) set_animation(name string) {
    classname := StringName.new("AnimationNodeAnimation")
    fnname := StringName.new("set_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeAnimation) get_animation() string {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeAnimation")
    fnname := StringName.new("get_animation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r AnimationNodeAnimation) set_play_mode(mode AnimationNodeAnimationPlayMode) {
    classname := StringName.new("AnimationNodeAnimation")
    fnname := StringName.new("set_play_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3347718873)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeAnimation) get_play_mode() AnimationNodeAnimationPlayMode {
    mut object_out := i64(AnimationNodeAnimationPlayMode.play_mode_forward)
    classname := StringName.new("AnimationNodeAnimation")
    fnname := StringName.new("get_play_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2061244637)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AnimationNodeAnimationPlayMode(object_out)}
}
