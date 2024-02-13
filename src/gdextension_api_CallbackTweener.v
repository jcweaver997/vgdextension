module vgdextension

@[noinit]
pub struct CallbackTweener {
    Tweener
}

pub fn (mut r CallbackTweener) set_delay(delay f64) CallbackTweener {
    mut object_out := CallbackTweener{}
    classname := StringName.new("CallbackTweener")
    defer { classname.deinit() }
    fnname := StringName.new("set_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3008182292)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delay)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
