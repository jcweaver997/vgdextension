module vgdextension

@[noinit]
pub struct EditorSelection {
    Object
}

pub fn (r &EditorSelection) clear() {
    classname := StringName.new("EditorSelection")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSelection) add_node(node Node) {
    classname := StringName.new("EditorSelection")
    fnname := StringName.new("add_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSelection) remove_node(node Node) {
    classname := StringName.new("EditorSelection")
    fnname := StringName.new("remove_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorSelection) get_selected_nodes() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorSelection")
    fnname := StringName.new("get_selected_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorSelection) get_transformable_selected_nodes() Array {
    mut object_out := Array{}
    classname := StringName.new("EditorSelection")
    fnname := StringName.new("get_transformable_selected_nodes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
