module vgdextension

pub type SphereMesh = voidptr

pub fn (mut r SphereMesh) set_radius(radius f32) {
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SphereMesh) get_radius() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_radius")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SphereMesh) set_height(height f32) {
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SphereMesh) get_height() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SphereMesh) set_radial_segments(radial_segments i32) {
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_radial_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SphereMesh) get_radial_segments() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_radial_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SphereMesh) set_rings(rings i32) {
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SphereMesh) get_rings() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_rings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SphereMesh) set_is_hemisphere(is_hemisphere bool) {
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_is_hemisphere")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SphereMesh) get_is_hemisphere() bool {
    mut object_out := false
    classname := StringName.new("SphereMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_is_hemisphere")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
