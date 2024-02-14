module vgdextension

@[noinit]
pub struct SubViewportContainer {
    Container
}

pub interface ISubViewportContainerPropagateInputEvent {
    mut:
    virt_propagate_input_event(event InputEvent) bool
}

pub fn (r &SubViewportContainer) upropagate_input_event(event InputEvent) bool {
    mut object_out := false
    classname := StringName.new("SubViewportContainer")
    fnname := StringName.new("_propagate_input_event")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = event.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SubViewportContainer) set_stretch(enable bool) {
    classname := StringName.new("SubViewportContainer")
    fnname := StringName.new("set_stretch")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SubViewportContainer) is_stretch_enabled() bool {
    mut object_out := false
    classname := StringName.new("SubViewportContainer")
    fnname := StringName.new("is_stretch_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r SubViewportContainer) set_stretch_shrink(amount i32) {
    classname := StringName.new("SubViewportContainer")
    fnname := StringName.new("set_stretch_shrink")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &SubViewportContainer) get_stretch_shrink() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SubViewportContainer")
    fnname := StringName.new("get_stretch_shrink")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
