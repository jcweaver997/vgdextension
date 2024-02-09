module vgdextension

pub struct InputEventAction {
    InputEvent
}

pub fn (mut r InputEventAction) set_action(action StringName) {
    classname := StringName.new("InputEventAction")
    defer { classname.deinit() }
    fnname := StringName.new("set_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventAction) get_action() StringName {
    mut object_out := StringName{}
    classname := StringName.new("InputEventAction")
    defer { classname.deinit() }
    fnname := StringName.new("get_action")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r InputEventAction) set_pressed(pressed bool) {
    classname := StringName.new("InputEventAction")
    defer { classname.deinit() }
    fnname := StringName.new("set_pressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r InputEventAction) set_strength(strength f64) {
    classname := StringName.new("InputEventAction")
    defer { classname.deinit() }
    fnname := StringName.new("set_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &InputEventAction) get_strength() f64 {
    mut object_out := f64(0)
    classname := StringName.new("InputEventAction")
    defer { classname.deinit() }
    fnname := StringName.new("get_strength")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
