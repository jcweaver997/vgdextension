pub type EditorInspector = voidptr

pub fn (r &EditorInspector) get_selected_path() String {
    mut object_out := String{}
    classname := StringName.new("EditorInspector")
    defer { classname.deinit() }
    fnname := StringName.new("get_selected_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
