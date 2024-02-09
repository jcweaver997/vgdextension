module vgdextension

pub struct GridContainer {
    Container
}

pub fn (mut r GridContainer) set_columns(columns i32) {
    classname := StringName.new("GridContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_columns")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&columns)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GridContainer) get_columns() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GridContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_columns")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
