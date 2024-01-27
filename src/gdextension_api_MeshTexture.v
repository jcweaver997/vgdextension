module vgdextension

pub type MeshTexture = voidptr

pub fn (mut r MeshTexture) set_mesh(mesh Mesh) {
    classname := StringName.new("MeshTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 194775623)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MeshTexture) get_mesh() Mesh {
    mut object_out := Mesh(unsafe{nil})
    classname := StringName.new("MeshTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_mesh")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1808005922)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshTexture) set_image_size(size Vector2) {
    classname := StringName.new("MeshTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_image_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MeshTexture) get_image_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("MeshTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_image_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MeshTexture) set_base_texture(texture Texture2D) {
    classname := StringName.new("MeshTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_base_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MeshTexture) get_base_texture() Texture2D {
    mut object_out := Texture2D(unsafe{nil})
    classname := StringName.new("MeshTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_base_texture")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
