module vgdextension

pub struct PropertyTweener {
    Tweener
}

pub fn (mut r PropertyTweener) from(value Variant) PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    defer { classname.deinit() }
    fnname := StringName.new("from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4190193059)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PropertyTweener) from_current() PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    defer { classname.deinit() }
    fnname := StringName.new("from_current")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4279177709)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PropertyTweener) as_relative() PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    defer { classname.deinit() }
    fnname := StringName.new("as_relative")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4279177709)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PropertyTweener) set_trans(trans TweenTransitionType) PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    defer { classname.deinit() }
    fnname := StringName.new("set_trans")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1899107404)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&trans)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PropertyTweener) set_ease(ease TweenEaseType) PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    defer { classname.deinit() }
    fnname := StringName.new("set_ease")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1080455622)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ease)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r PropertyTweener) set_delay(delay f64) PropertyTweener {
    mut object_out := PropertyTweener{}
    classname := StringName.new("PropertyTweener")
    defer { classname.deinit() }
    fnname := StringName.new("set_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2171559331)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delay)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
