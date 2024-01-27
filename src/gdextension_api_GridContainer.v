pub type GridContainer = voidptr

pub fn (mut r GridContainer) set_columns(columns i32) {
    classname := StringName.new("GridContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_columns")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GridContainer) get_columns() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GridContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_columns")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
