module vgdextension

@[noinit]
pub struct MethodTweener {
    Tweener
}

pub fn (mut r MethodTweener) set_delay(delay f64) MethodTweener {
    mut object_out := MethodTweener{}
    classname := StringName.new("MethodTweener")
    fnname := StringName.new("set_delay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 266477812)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delay)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MethodTweener) set_trans(trans TweenTransitionType) MethodTweener {
    mut object_out := MethodTweener{}
    classname := StringName.new("MethodTweener")
    fnname := StringName.new("set_trans")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740975367)
    mut args := unsafe { [1]voidptr{} }
    i64_trans := i64(trans)
    args[0] = unsafe{voidptr(&i64_trans)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MethodTweener) set_ease(ease TweenEaseType) MethodTweener {
    mut object_out := MethodTweener{}
    classname := StringName.new("MethodTweener")
    fnname := StringName.new("set_ease")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 315540545)
    mut args := unsafe { [1]voidptr{} }
    i64_ease := i64(ease)
    args[0] = unsafe{voidptr(&i64_ease)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
