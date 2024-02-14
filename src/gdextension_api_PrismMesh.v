module vgdextension

@[noinit]
pub struct PrismMesh {
    PrimitiveMesh
}

pub fn (mut r PrismMesh) set_left_to_right(left_to_right f64) {
    classname := StringName.new("PrismMesh")
    fnname := StringName.new("set_left_to_right")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&left_to_right)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PrismMesh) get_left_to_right() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PrismMesh")
    fnname := StringName.new("get_left_to_right")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PrismMesh) set_size(size Vector3) {
    classname := StringName.new("PrismMesh")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3460891852)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PrismMesh) get_size() Vector3 {
    mut object_out := Vector3{}
    classname := StringName.new("PrismMesh")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3360562783)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PrismMesh) set_subdivide_width(segments i32) {
    classname := StringName.new("PrismMesh")
    fnname := StringName.new("set_subdivide_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&segments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PrismMesh) get_subdivide_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PrismMesh")
    fnname := StringName.new("get_subdivide_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PrismMesh) set_subdivide_height(segments i32) {
    classname := StringName.new("PrismMesh")
    fnname := StringName.new("set_subdivide_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&segments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PrismMesh) get_subdivide_height() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PrismMesh")
    fnname := StringName.new("get_subdivide_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r PrismMesh) set_subdivide_depth(segments i32) {
    classname := StringName.new("PrismMesh")
    fnname := StringName.new("set_subdivide_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&segments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PrismMesh) get_subdivide_depth() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PrismMesh")
    fnname := StringName.new("get_subdivide_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
