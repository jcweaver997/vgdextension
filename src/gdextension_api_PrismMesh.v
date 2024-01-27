module vgdextension

pub type PrismMesh = voidptr

pub fn (mut r PrismMesh) set_left_to_right(left_to_right f32) {
    classname := StringName.new("PrismMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_left_to_right")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PrismMesh) get_left_to_right() f32 {
    mut object_out := f32(0)
    classname := StringName.new("PrismMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_left_to_right")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PrismMesh) set_size(size Vector3) {
    classname := StringName.new("PrismMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PrismMesh) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PrismMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PrismMesh) set_subdivide_width(segments i32) {
    classname := StringName.new("PrismMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_subdivide_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PrismMesh) get_subdivide_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PrismMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdivide_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PrismMesh) set_subdivide_height(segments i32) {
    classname := StringName.new("PrismMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_subdivide_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PrismMesh) get_subdivide_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PrismMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdivide_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PrismMesh) set_subdivide_depth(segments i32) {
    classname := StringName.new("PrismMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_subdivide_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PrismMesh) get_subdivide_depth() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PrismMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdivide_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
