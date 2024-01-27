module vgdextension

pub type TorusMesh = voidptr

pub fn (mut r TorusMesh) set_inner_radius(radius f32) {
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TorusMesh) get_inner_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_inner_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TorusMesh) set_outer_radius(radius f32) {
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_outer_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TorusMesh) get_outer_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_outer_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TorusMesh) set_rings(rings i32) {
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TorusMesh) get_rings() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r TorusMesh) set_ring_segments(rings i32) {
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_ring_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &TorusMesh) get_ring_segments() i32 {
    mut object_out := i32(0)
    classname := StringName.new("TorusMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_ring_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
