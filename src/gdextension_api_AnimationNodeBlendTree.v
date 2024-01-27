module vgdextension

pub type AnimationNodeBlendTree = voidptr

pub fn (mut r AnimationNodeBlendTree) add_node(name StringName, node AnimationNode, position Vector2) {
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("add_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2055804584)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeBlendTree) get_node(name StringName) AnimationNode {
    mut object_out := AnimationNode(unsafe{nil})
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 625644256)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendTree) remove_node(name StringName) {
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("remove_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationNodeBlendTree) rename_node(name StringName, new_name StringName) {
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("rename_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeBlendTree) has_node(name StringName) bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("has_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendTree) connect_node(input_node StringName, input_index i32, output_node StringName) {
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("connect_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2168001410)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationNodeBlendTree) disconnect_node(input_node StringName, input_index i32) {
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("disconnect_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r AnimationNodeBlendTree) set_node_position(name StringName, position Vector2) {
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_node_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1999414630)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeBlendTree) get_node_position(name StringName) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3100822709)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r AnimationNodeBlendTree) set_graph_offset(offset Vector2) {
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("set_graph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AnimationNodeBlendTree) get_graph_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeBlendTree")
    defer { classname.deinit() }
    fnname := StringName.new("get_graph_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
