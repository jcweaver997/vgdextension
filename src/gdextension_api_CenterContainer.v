module vgdextension

pub struct CenterContainer {
    Container
}

pub fn (mut r CenterContainer) set_use_top_left(enable bool) {
    classname := StringName.new("CenterContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_top_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CenterContainer) is_using_top_left() bool {
    mut object_out := false
    classname := StringName.new("CenterContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_top_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
