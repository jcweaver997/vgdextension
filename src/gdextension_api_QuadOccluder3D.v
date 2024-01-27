pub type QuadOccluder3D = voidptr

pub fn (mut r QuadOccluder3D) set_size(size Vector2) {
    classname := StringName.new("QuadOccluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &QuadOccluder3D) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("QuadOccluder3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
