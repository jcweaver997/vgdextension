pub type CSGPrimitive3D = voidptr

pub fn (mut r CSGPrimitive3D) set_flip_faces(flip_faces bool) {
    classname := StringName.new("CSGPrimitive3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_flip_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CSGPrimitive3D) get_flip_faces() bool {
    mut object_out := false
    classname := StringName.new("CSGPrimitive3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_flip_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
