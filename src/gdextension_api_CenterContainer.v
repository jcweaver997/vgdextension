pub type CenterContainer = voidptr

pub fn (mut r CenterContainer) set_use_top_left(enable bool) {
    classname := StringName.new("CenterContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_top_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CenterContainer) is_using_top_left() bool {
    mut object_out := false
    classname := StringName.new("CenterContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_top_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
