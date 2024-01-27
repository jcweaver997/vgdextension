module vgdextension

pub type ButtonGroup = voidptr

pub fn (mut r ButtonGroup) get_pressed_button() BaseButton {
    mut object_out := BaseButton(unsafe{nil})
    classname := StringName.new("ButtonGroup")
    defer { classname.deinit() }
    fnname := StringName.new("get_pressed_button")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3886434893)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ButtonGroup) get_buttons() Array {
    mut object_out := Array{}
    classname := StringName.new("ButtonGroup")
    defer { classname.deinit() }
    fnname := StringName.new("get_buttons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ButtonGroup) set_allow_unpress(enabled bool) {
    classname := StringName.new("ButtonGroup")
    defer { classname.deinit() }
    fnname := StringName.new("set_allow_unpress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ButtonGroup) is_allow_unpress() bool {
    mut object_out := false
    classname := StringName.new("ButtonGroup")
    defer { classname.deinit() }
    fnname := StringName.new("is_allow_unpress")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
