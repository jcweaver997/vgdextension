module vgdextension

@[noinit]
pub struct MeshTexture {
    Texture2D
}

pub fn (r &MeshTexture) set_mesh(mesh Mesh) {
    classname := StringName.new("MeshTexture")
    fnname := StringName.new("set_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&mesh.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshTexture) get_mesh() Mesh {
    mut object_out := Mesh{}
    classname := StringName.new("MeshTexture")
    fnname := StringName.new("get_mesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshTexture) set_image_size(size Vector2) {
    classname := StringName.new("MeshTexture")
    fnname := StringName.new("set_image_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshTexture) get_image_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("MeshTexture")
    fnname := StringName.new("get_image_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MeshTexture) set_base_texture(texture Texture2D) {
    classname := StringName.new("MeshTexture")
    fnname := StringName.new("set_base_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MeshTexture) get_base_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("MeshTexture")
    fnname := StringName.new("get_base_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
