pub type VisibleOnScreenNotifier3D = voidptr

pub fn (mut r VisibleOnScreenNotifier3D) set_aabb(rect AABB) {
    classname := StringName.new("VisibleOnScreenNotifier3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisibleOnScreenNotifier3D) is_on_screen() bool {
    mut object_out := false
    classname := StringName.new("VisibleOnScreenNotifier3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_on_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
