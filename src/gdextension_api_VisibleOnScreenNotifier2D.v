pub type VisibleOnScreenNotifier2D = voidptr

pub fn (mut r VisibleOnScreenNotifier2D) set_rect(rect Rect2) {
    classname := StringName.new("VisibleOnScreenNotifier2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2046264180)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisibleOnScreenNotifier2D) get_rect() Rect2 {
    mut object_out := Rect2{}
    classname := StringName.new("VisibleOnScreenNotifier2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1639390495)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisibleOnScreenNotifier2D) is_on_screen() bool {
    mut object_out := false
    classname := StringName.new("VisibleOnScreenNotifier2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_on_screen")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
