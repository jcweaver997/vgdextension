module vgdextension

@[noinit]
pub struct ButtonGroup {
    Resource
}

pub fn (mut r ButtonGroup) get_pressed_button() BaseButton {
    mut object_out := BaseButton{}
    classname := StringName.new("ButtonGroup")
    fnname := StringName.new("get_pressed_button")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3886434893)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ButtonGroup) get_buttons() Array {
    mut object_out := Array{}
    classname := StringName.new("ButtonGroup")
    fnname := StringName.new("get_buttons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ButtonGroup) set_allow_unpress(enabled bool) {
    classname := StringName.new("ButtonGroup")
    fnname := StringName.new("set_allow_unpress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ButtonGroup) is_allow_unpress() bool {
    mut object_out := false
    classname := StringName.new("ButtonGroup")
    fnname := StringName.new("is_allow_unpress")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
