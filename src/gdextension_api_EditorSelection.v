module vgdextension

pub type EditorSelection = voidptr

pub fn (mut r EditorSelection) clear() {
    classname := StringName.new("EditorSelection")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorSelection) add_node(node Node) {
    classname := StringName.new("EditorSelection")
    defer { classname.deinit() }
    fnname := StringName.new("add_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorSelection) remove_node(node Node) {
    classname := StringName.new("EditorSelection")
    defer { classname.deinit() }
    fnname := StringName.new("remove_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r EditorSelection) get_selected_nodes() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorSelection")
    defer { classname.deinit() }
    fnname := StringName.new("get_selected_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r EditorSelection) get_transformable_selected_nodes() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorSelection")
    defer { classname.deinit() }
    fnname := StringName.new("get_transformable_selected_nodes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
