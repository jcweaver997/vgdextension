pub enum AnimationNodeAnimationPlayMode {
    play_mode_forward = 0
    play_mode_backward = 1
}

pub type AnimationNodeAnimation = voidptr

pub fn (mut r AnimationNodeAnimation) set_animation(name StringName) {
    classname := StringName.new("AnimationNodeAnimation")
    defer { classname.deinit() }
    fnname := StringName.new("set_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeAnimation) get_animation() StringName {
    mut object_out := StringName{}
    classname := StringName.new("AnimationNodeAnimation")
    defer { classname.deinit() }
    fnname := StringName.new("get_animation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeAnimation) set_play_mode(mode AnimationNodeAnimationPlayMode) {
    classname := StringName.new("AnimationNodeAnimation")
    defer { classname.deinit() }
    fnname := StringName.new("set_play_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3347718873)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeAnimation) get_play_mode() AnimationNodeAnimationPlayMode {
    mut object_out := AnimationNodeAnimationPlayMode.play_mode_forward
    classname := StringName.new("AnimationNodeAnimation")
    defer { classname.deinit() }
    fnname := StringName.new("get_play_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2061244637)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
