module vgdextension

@[noinit]
pub struct CSGMesh3D {
    CSGPrimitive3D
}

pub fn (mut r CSGMesh3D) set_mesh(mesh Mesh) {
    classname := StringName.new("CSGMesh3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    mut args := unsafe { [1]voidptr{} }
    args[0] = mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r CSGMesh3D) get_mesh() Mesh {
    mut object_out := Mesh{}
    classname := StringName.new("CSGMesh3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4081188045)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGMesh3D) set_material(material Material) {
    classname := StringName.new("CSGMesh3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CSGMesh3D) get_material() Material {
    mut object_out := Material{}
    classname := StringName.new("CSGMesh3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_material")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
