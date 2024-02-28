module vgdextension

@[noinit]
pub struct PropertyTweener {
    Tweener
}

pub fn (r &PropertyTweener) from(value Variant) PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    fnname := StringName.new("from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4190193059)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PropertyTweener) from_current() PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    fnname := StringName.new("from_current")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4279177709)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PropertyTweener) as_relative() PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    fnname := StringName.new("as_relative")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4279177709)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PropertyTweener) set_trans(trans TweenTransitionType) PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    fnname := StringName.new("set_trans")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1899107404)
    mut args := unsafe { [1]voidptr{} }
    i64_trans := i64(trans)
    args[0] = unsafe{voidptr(&i64_trans)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PropertyTweener) set_ease(ease TweenEaseType) PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    fnname := StringName.new("set_ease")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1080455622)
    mut args := unsafe { [1]voidptr{} }
    i64_ease := i64(ease)
    args[0] = unsafe{voidptr(&i64_ease)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PropertyTweener) set_delay(delay f64) PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    fnname := StringName.new("set_delay")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2171559331)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delay)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
