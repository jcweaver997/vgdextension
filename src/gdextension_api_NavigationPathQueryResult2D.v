module vgdextension

pub enum NavigationPathQueryResult2DPathSegmentType as i64 {
    path_segment_type_region = 0
    path_segment_type_link = 1
}

@[noinit]
pub struct NavigationPathQueryResult2D {
    RefCounted
}

pub fn (r &NavigationPathQueryResult2D) set_path(path PackedVector2Array) {
    classname := StringName.new("NavigationPathQueryResult2D")
    fnname := StringName.new("set_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1509147220)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryResult2D) get_path() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    classname := StringName.new("NavigationPathQueryResult2D")
    fnname := StringName.new("get_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2961356807)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPathQueryResult2D) set_path_types(path_types PackedInt32Array) {
    classname := StringName.new("NavigationPathQueryResult2D")
    fnname := StringName.new("set_path_types")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3614634198)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path_types)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryResult2D) get_path_types() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    classname := StringName.new("NavigationPathQueryResult2D")
    fnname := StringName.new("get_path_types")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1930428628)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPathQueryResult2D) set_path_rids(path_rids Array) {
    classname := StringName.new("NavigationPathQueryResult2D")
    fnname := StringName.new("set_path_rids")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path_rids)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryResult2D) get_path_rids() Array {
    mut object_out := Array{}
    classname := StringName.new("NavigationPathQueryResult2D")
    fnname := StringName.new("get_path_rids")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPathQueryResult2D) set_path_owner_ids(path_owner_ids PackedInt64Array) {
    classname := StringName.new("NavigationPathQueryResult2D")
    fnname := StringName.new("set_path_owner_ids")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3709968205)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path_owner_ids)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &NavigationPathQueryResult2D) get_path_owner_ids() PackedInt64Array {
    mut object_out := PackedInt64Array{}
    classname := StringName.new("NavigationPathQueryResult2D")
    fnname := StringName.new("get_path_owner_ids")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 235988956)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &NavigationPathQueryResult2D) reset() {
    classname := StringName.new("NavigationPathQueryResult2D")
    fnname := StringName.new("reset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
