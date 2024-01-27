module vgdextension

pub type PlaceholderMesh = voidptr

pub fn (mut r PlaceholderMesh) set_aabb(aabb AABB) {
    classname := StringName.new("PlaceholderMesh")
    defer { classname.deinit() }
    fnname := StringName.new("set_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
