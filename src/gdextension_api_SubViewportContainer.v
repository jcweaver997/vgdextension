module vgdextension

@[noinit]
pub struct SubViewportContainer {
    Container
}

pub fn (mut r SubViewportContainer) set_stretch(enable bool) {
    classname := StringName.new("SubViewportContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SubViewportContainer) is_stretch_enabled() bool {
    mut object_out := false
    classname := StringName.new("SubViewportContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_stretch_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SubViewportContainer) set_stretch_shrink(amount i32) {
    classname := StringName.new("SubViewportContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stretch_shrink")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&amount)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SubViewportContainer) get_stretch_shrink() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SubViewportContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_stretch_shrink")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
