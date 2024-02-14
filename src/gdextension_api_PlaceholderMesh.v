module vgdextension

@[noinit]
pub struct PlaceholderMesh {
    Mesh
}

pub fn (mut r PlaceholderMesh) set_aabb(aabb AABB) {
    classname := StringName.new("PlaceholderMesh")
    fnname := StringName.new("set_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&aabb)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
