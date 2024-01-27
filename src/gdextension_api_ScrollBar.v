module vgdextension

pub type ScrollBar = voidptr

pub fn (mut r ScrollBar) set_custom_step(step f32) {
    classname := StringName.new("ScrollBar")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ScrollBar) get_custom_step() f32 {
    mut object_out := f32(0)
    classname := StringName.new("ScrollBar")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_step")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
