pub enum NavigationPathQueryResult3DPathSegmentType {
    path_segment_type_region = 0
    path_segment_type_link = 1
}

pub type NavigationPathQueryResult3D = voidptr

pub fn (mut r NavigationPathQueryResult3D) set_path(path PackedVector3Array) {
    classname := StringName.new("NavigationPathQueryResult3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationPathQueryResult3D) get_path() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("NavigationPathQueryResult3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPathQueryResult3D) set_path_types(path_types PackedInt32Array) {
    classname := StringName.new("NavigationPathQueryResult3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_types")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationPathQueryResult3D) get_path_types() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("NavigationPathQueryResult3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_types")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPathQueryResult3D) set_path_rids(path_rids Array) {
    classname := StringName.new("NavigationPathQueryResult3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_rids")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationPathQueryResult3D) get_path_rids() Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationPathQueryResult3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_rids")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPathQueryResult3D) set_path_owner_ids(path_owner_ids PackedInt64Array) {
    classname := StringName.new("NavigationPathQueryResult3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_path_owner_ids")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3709968205)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &NavigationPathQueryResult3D) get_path_owner_ids() PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("NavigationPathQueryResult3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_owner_ids")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 235988956)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r NavigationPathQueryResult3D) reset() {
    classname := StringName.new("NavigationPathQueryResult3D")
    defer { classname.deinit() }
    fnname := StringName.new("reset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
