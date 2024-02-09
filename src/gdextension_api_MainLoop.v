module vgdextension

pub struct MainLoop {
    Object
}

pub interface IMainLoopInitialize {
    mut:
    virt_initialize()
}

pub fn (mut r MainLoop) uinitialize() {
    classname := StringName.new("MainLoop")
    defer { classname.deinit() }
    fnname := StringName.new("_initialize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub interface IMainLoopPhysicsProcess {
    mut:
    virt_physics_process(delta f64) bool
}

pub fn (mut r MainLoop) uphysics_process(delta f64) bool {
    mut object_out := false
    classname := StringName.new("MainLoop")
    defer { classname.deinit() }
    fnname := StringName.new("_physics_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMainLoopProcess {
    mut:
    virt_process(delta f64) bool
}

pub fn (mut r MainLoop) uprocess(delta f64) bool {
    mut object_out := false
    classname := StringName.new("MainLoop")
    defer { classname.deinit() }
    fnname := StringName.new("_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface IMainLoopFinalize {
    mut:
    virt_finalize()
}

pub fn (mut r MainLoop) ufinalize() {
    classname := StringName.new("MainLoop")
    defer { classname.deinit() }
    fnname := StringName.new("_finalize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
