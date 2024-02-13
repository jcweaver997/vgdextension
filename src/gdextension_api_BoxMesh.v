module vgdextension

@[noinit]
pub struct BoxMesh {
    PrimitiveMesh
}

pub fn (mut r BoxMesh) set_size(size Vector3) {
    classname := StringName.new("BoxMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BoxMesh) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("BoxMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BoxMesh) set_subdivide_width(subdivide i32) {
    classname := StringName.new("BoxMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_subdivide_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&subdivide)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BoxMesh) get_subdivide_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BoxMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdivide_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BoxMesh) set_subdivide_height(divisions i32) {
    classname := StringName.new("BoxMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_subdivide_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&divisions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BoxMesh) get_subdivide_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BoxMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdivide_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BoxMesh) set_subdivide_depth(divisions i32) {
    classname := StringName.new("BoxMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_subdivide_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&divisions)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BoxMesh) get_subdivide_depth() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BoxMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_subdivide_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
