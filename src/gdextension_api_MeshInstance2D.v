module vgdextension

@[noinit]
pub struct MeshInstance2D {
    Node2D
}

pub fn (mut r MeshInstance2D) set_mesh(mesh Mesh) {
    classname := StringName.new("MeshInstance2D")
    fnname := StringName.new("set_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    mut args := unsafe { [1]voidptr{} }
    args[0] = mesh.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshInstance2D) get_mesh() Mesh {
    mut object_out := Mesh{}
    classname := StringName.new("MeshInstance2D")
    fnname := StringName.new("get_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r MeshInstance2D) set_texture(texture Texture2D) {
    classname := StringName.new("MeshInstance2D")
    fnname := StringName.new("set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = texture.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshInstance2D) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("MeshInstance2D")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
