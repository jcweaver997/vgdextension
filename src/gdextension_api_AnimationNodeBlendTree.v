module vgdextension

@[noinit]
pub struct AnimationNodeBlendTree {
    AnimationRootNode
}

pub fn (mut r AnimationNodeBlendTree) add_node(name StringName, node AnimationNode, position Vector2) {
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("add_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1980270704)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = node.ptr
    args[2] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendTree) get_node(name StringName) AnimationNode {
    mut object_out := AnimationNode{}
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("get_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 625644256)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationNodeBlendTree) remove_node(name StringName) {
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("remove_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationNodeBlendTree) rename_node(name StringName, new_name StringName) {
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("rename_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3740211285)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&new_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendTree) has_node(name StringName) bool {
    mut object_out := false
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("has_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationNodeBlendTree) connect_node(input_node StringName, input_index i32, output_node StringName) {
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("connect_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2168001410)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&input_node)}
    args[1] = unsafe{voidptr(&input_index)}
    args[2] = unsafe{voidptr(&output_node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationNodeBlendTree) disconnect_node(input_node StringName, input_index i32) {
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("disconnect_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2415702435)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&input_node)}
    args[1] = unsafe{voidptr(&input_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r AnimationNodeBlendTree) set_node_position(name StringName, position Vector2) {
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("set_node_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1999414630)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendTree) get_node_position(name StringName) Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("get_node_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3100822709)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AnimationNodeBlendTree) set_graph_offset(offset Vector2) {
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("set_graph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AnimationNodeBlendTree) get_graph_offset() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("AnimationNodeBlendTree")
    fnname := StringName.new("get_graph_offset")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
