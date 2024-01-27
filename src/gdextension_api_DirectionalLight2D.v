pub type DirectionalLight2D = voidptr

pub fn (mut r DirectionalLight2D) set_max_distance(pixels f32) {
    classname := StringName.new("DirectionalLight2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &DirectionalLight2D) get_max_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("DirectionalLight2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_max_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
