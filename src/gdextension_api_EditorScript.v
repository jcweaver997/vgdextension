module vgdextension

pub type EditorScript = voidptr

pub fn (mut r EditorScript) urun() {
    classname := StringName.new("EditorScript")
    defer { classname.deinit() }
    fnname := StringName.new("_run")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorScript) add_root_node(node Node) {
    classname := StringName.new("EditorScript")
    defer { classname.deinit() }
    fnname := StringName.new("add_root_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EditorScript) get_scene() Node {
    mut object_out := Node(unsafe{nil})
    classname := StringName.new("EditorScript")
    defer { classname.deinit() }
    fnname := StringName.new("get_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &EditorScript) get_editor_interface() EditorInterface {
    mut object_out := EditorInterface(unsafe{nil})
    classname := StringName.new("EditorScript")
    defer { classname.deinit() }
    fnname := StringName.new("get_editor_interface")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1976662476)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
