module vgdextension

@[noinit]
pub struct VisibleOnScreenNotifier2D {
    Node2D
}

pub fn (mut r VisibleOnScreenNotifier2D) set_rect(rect Rect2) {
    classname := StringName.new("VisibleOnScreenNotifier2D")
    fnname := StringName.new("set_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisibleOnScreenNotifier2D) get_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("VisibleOnScreenNotifier2D")
    fnname := StringName.new("get_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &VisibleOnScreenNotifier2D) is_on_screen() bool {
    mut object_out := false
    classname := StringName.new("VisibleOnScreenNotifier2D")
    fnname := StringName.new("is_on_screen")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
