module vgdextension

@[noinit]
pub struct Joint3D {
    Node3D
}

pub fn (r &Joint3D) set_node_a(node NodePath) {
    classname := StringName.new("Joint3D")
    fnname := StringName.new("set_node_a")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Joint3D) get_node_a() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Joint3D")
    fnname := StringName.new("get_node_a")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Joint3D) set_node_b(node NodePath) {
    classname := StringName.new("Joint3D")
    fnname := StringName.new("set_node_b")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Joint3D) get_node_b() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Joint3D")
    fnname := StringName.new("get_node_b")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Joint3D) set_solver_priority(priority i32) {
    classname := StringName.new("Joint3D")
    fnname := StringName.new("set_solver_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Joint3D) get_solver_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Joint3D")
    fnname := StringName.new("get_solver_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Joint3D) set_exclude_nodes_from_collision(enable bool) {
    classname := StringName.new("Joint3D")
    fnname := StringName.new("set_exclude_nodes_from_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Joint3D) get_exclude_nodes_from_collision() bool {
    mut object_out := false
    classname := StringName.new("Joint3D")
    fnname := StringName.new("get_exclude_nodes_from_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Joint3D) get_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("Joint3D")
    fnname := StringName.new("get_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
