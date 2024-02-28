module vgdextension

@[noinit]
pub struct MultiMeshInstance2D {
    Node2D
}

pub fn (r &MultiMeshInstance2D) set_multimesh(multimesh MultiMesh) {
    classname := StringName.new("MultiMeshInstance2D")
    fnname := StringName.new("set_multimesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2246127404)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&multimesh.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiMeshInstance2D) get_multimesh() MultiMesh {
    mut object_out := MultiMesh{}
    classname := StringName.new("MultiMeshInstance2D")
    fnname := StringName.new("get_multimesh")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1385450523)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiMeshInstance2D) set_texture(texture Texture2D) {
    classname := StringName.new("MultiMeshInstance2D")
    fnname := StringName.new("set_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4051416890)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&texture.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiMeshInstance2D) get_texture() Texture2D {
    mut object_out := Texture2D{}
    classname := StringName.new("MultiMeshInstance2D")
    fnname := StringName.new("get_texture")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3635182373)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
