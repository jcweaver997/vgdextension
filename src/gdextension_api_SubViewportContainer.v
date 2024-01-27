module vgdextension

pub type SubViewportContainer = voidptr

pub fn (mut r SubViewportContainer) set_stretch(enable bool) {
    classname := StringName.new("SubViewportContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stretch")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SubViewportContainer) is_stretch_enabled() bool {
    mut object_out := false
    classname := StringName.new("SubViewportContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_stretch_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SubViewportContainer) set_stretch_shrink(amount i32) {
    classname := StringName.new("SubViewportContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stretch_shrink")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SubViewportContainer) get_stretch_shrink() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SubViewportContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_stretch_shrink")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
