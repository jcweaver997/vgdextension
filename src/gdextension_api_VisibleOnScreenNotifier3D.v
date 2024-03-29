module vgdextension

@[noinit]
pub struct VisibleOnScreenNotifier3D {
    VisualInstance3D
}

pub fn (r &VisibleOnScreenNotifier3D) set_aabb(rect AABB) {
    classname := StringName.new("VisibleOnScreenNotifier3D")
    fnname := StringName.new("set_aabb")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 259215842)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisibleOnScreenNotifier3D) is_on_screen() bool {
    mut object_out := false
    classname := StringName.new("VisibleOnScreenNotifier3D")
    fnname := StringName.new("is_on_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
