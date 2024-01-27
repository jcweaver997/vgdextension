module vgdextension

pub type MethodTweener = voidptr

pub fn (mut r MethodTweener) set_delay(delay f32) MethodTweener {
    mut object_out := MethodTweener(unsafe{nil})
    classname := StringName.new("MethodTweener")
    defer { classname.deinit() }
    fnname := StringName.new("set_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 266477812)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delay)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MethodTweener) set_trans(trans TweenTransitionType) MethodTweener {
    mut object_out := MethodTweener(unsafe{nil})
    classname := StringName.new("MethodTweener")
    defer { classname.deinit() }
    fnname := StringName.new("set_trans")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740975367)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&trans)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MethodTweener) set_ease(ease TweenEaseType) MethodTweener {
    mut object_out := MethodTweener(unsafe{nil})
    classname := StringName.new("MethodTweener")
    defer { classname.deinit() }
    fnname := StringName.new("set_ease")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 315540545)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ease)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
