pub type MissingResource = voidptr

pub fn (mut r MissingResource) set_original_class(name String) {
    classname := StringName.new("MissingResource")
    defer { classname.deinit() }
    fnname := StringName.new("set_original_class")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MissingResource) get_original_class() String {
    mut object_out := String{}
    classname := StringName.new("MissingResource")
    defer { classname.deinit() }
    fnname := StringName.new("get_original_class")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MissingResource) set_recording_properties(enable bool) {
    classname := StringName.new("MissingResource")
    defer { classname.deinit() }
    fnname := StringName.new("set_recording_properties")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &MissingResource) is_recording_properties() bool {
    mut object_out := false
    classname := StringName.new("MissingResource")
    defer { classname.deinit() }
    fnname := StringName.new("is_recording_properties")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
