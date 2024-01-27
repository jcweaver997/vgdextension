pub type Joint3D = voidptr

pub fn (mut r Joint3D) set_node_a(node NodePath) {
    classname := StringName.new("Joint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_node_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Joint3D) get_node_a() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Joint3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Joint3D) set_node_b(node NodePath) {
    classname := StringName.new("Joint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_node_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Joint3D) get_node_b() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Joint3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Joint3D) set_solver_priority(priority i32) {
    classname := StringName.new("Joint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_solver_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Joint3D) get_solver_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Joint3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_solver_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Joint3D) set_exclude_nodes_from_collision(enable bool) {
    classname := StringName.new("Joint3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude_nodes_from_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Joint3D) get_exclude_nodes_from_collision() bool {
    mut object_out := false
    classname := StringName.new("Joint3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude_nodes_from_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
