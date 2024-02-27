module vgdextension

@[noinit]
pub struct InputEventAction {
    InputEvent
}

pub fn (mut r InputEventAction) set_action(action string) {
    classname := StringName.new("InputEventAction")
    fnname := StringName.new("set_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(action)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventAction) get_action() string {
    mut object_out := StringName{}
    classname := StringName.new("InputEventAction")
    fnname := StringName.new("get_action")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r InputEventAction) set_pressed(pressed bool) {
    classname := StringName.new("InputEventAction")
    fnname := StringName.new("set_pressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pressed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r InputEventAction) set_strength(strength f64) {
    classname := StringName.new("InputEventAction")
    fnname := StringName.new("set_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&strength)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &InputEventAction) get_strength() f64 {
    mut object_out := f64(0)
    classname := StringName.new("InputEventAction")
    fnname := StringName.new("get_strength")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
