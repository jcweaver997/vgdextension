module vgdextension

@[noinit]
pub struct MainLoop {
    Object
}

pub interface IMainLoopInitialize {
    mut:
    virt_initialize()
}

pub fn (mut r MainLoop) uinitialize() {
    classname := StringName.new("MainLoop")
    fnname := StringName.new("_initialize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub interface IMainLoopPhysicsProcess {
    mut:
    virt_physics_process(delta f64) bool
}

pub fn (mut r MainLoop) uphysics_process(delta f64) bool {
    mut object_out := false
    classname := StringName.new("MainLoop")
    fnname := StringName.new("_physics_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMainLoopProcess {
    mut:
    virt_process(delta f64) bool
}

pub fn (mut r MainLoop) uprocess(delta f64) bool {
    mut object_out := false
    classname := StringName.new("MainLoop")
    fnname := StringName.new("_process")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IMainLoopFinalize {
    mut:
    virt_finalize()
}

pub fn (mut r MainLoop) ufinalize() {
    classname := StringName.new("MainLoop")
    fnname := StringName.new("_finalize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
