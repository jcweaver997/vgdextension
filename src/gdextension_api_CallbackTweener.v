module vgdextension

pub type CallbackTweener = voidptr

pub fn (mut r CallbackTweener) set_delay(delay f32) CallbackTweener {
    mut object_out := CallbackTweener(unsafe{nil})
    classname := StringName.new("CallbackTweener")
    defer { classname.deinit() }
    fnname := StringName.new("set_delay")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3008182292)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delay)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
