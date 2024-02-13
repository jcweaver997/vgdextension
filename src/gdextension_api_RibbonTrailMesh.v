module vgdextension

pub enum RibbonTrailMeshShape {
    shape_flat = 0
    shape_cross = 1
}

@[noinit]
pub struct RibbonTrailMesh {
    PrimitiveMesh
}

pub fn (mut r RibbonTrailMesh) set_size(size f64) {
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RibbonTrailMesh) get_size() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RibbonTrailMesh) set_sections(sections i32) {
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_sections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sections)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RibbonTrailMesh) get_sections() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_sections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RibbonTrailMesh) set_section_length(section_length f64) {
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_section_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&section_length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RibbonTrailMesh) get_section_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_section_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RibbonTrailMesh) set_section_segments(section_segments i32) {
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_section_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&section_segments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RibbonTrailMesh) get_section_segments() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_section_segments")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RibbonTrailMesh) set_curve(curve Curve) {
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RibbonTrailMesh) get_curve() Curve {
    mut object_out := Curve{}
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r RibbonTrailMesh) set_shape(shape RibbonTrailMeshShape) {
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1684440262)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&shape)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &RibbonTrailMesh) get_shape() RibbonTrailMeshShape {
    mut object_out := RibbonTrailMeshShape.shape_flat
    classname := StringName.new("RibbonTrailMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1317484155)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
