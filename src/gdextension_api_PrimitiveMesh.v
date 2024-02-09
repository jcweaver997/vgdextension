module vgdextension

pub struct PrimitiveMesh {
    Mesh
}

pub interface IPrimitiveMeshCreateMeshArray {
    mut:
    virt_create_mesh_array() Array
}

pub fn (r &PrimitiveMesh) ucreate_mesh_array() Array {
    mut object_out := Array{}
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("_create_mesh_array")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PrimitiveMesh) set_material(material Material) {
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PrimitiveMesh) get_material() Material {
    mut object_out := Material{}
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PrimitiveMesh) get_mesh_arrays() Array {
    mut object_out := Array{}
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh_arrays")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PrimitiveMesh) set_custom_aabb(aabb AABB) {
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_custom_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PrimitiveMesh) get_custom_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_custom_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PrimitiveMesh) set_flip_faces(flip_faces bool) {
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_flip_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&flip_faces)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PrimitiveMesh) get_flip_faces() bool {
    mut object_out := false
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_flip_faces")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PrimitiveMesh) set_add_uv2(add_uv2 bool) {
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_add_uv2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&add_uv2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PrimitiveMesh) get_add_uv2() bool {
    mut object_out := false
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_add_uv2")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PrimitiveMesh) set_uv2_padding(uv2_padding f64) {
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_uv2_padding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&uv2_padding)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PrimitiveMesh) get_uv2_padding() f64 {
    mut object_out := f64(0)
    classname := StringName.new("PrimitiveMesh")
    defer { classname.deinit() }
    fnname := StringName.new("get_uv2_padding")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
