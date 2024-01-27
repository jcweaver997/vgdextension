pub type MainLoop = voidptr

pub fn (mut r MainLoop) uinitialize() {
    classname := StringName.new("MainLoop")
    defer { classname.deinit() }
    fnname := StringName.new("_initialize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r MainLoop) uphysics_process(delta f32) bool {
    mut object_out := false
    classname := StringName.new("MainLoop")
    defer { classname.deinit() }
    fnname := StringName.new("_physics_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MainLoop) uprocess(delta f32) bool {
    mut object_out := false
    classname := StringName.new("MainLoop")
    defer { classname.deinit() }
    fnname := StringName.new("_process")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delta)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MainLoop) ufinalize() {
    classname := StringName.new("MainLoop")
    defer { classname.deinit() }
    fnname := StringName.new("_finalize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
