module vgdextension

@[noinit]
pub struct Joint2D {
    Node2D
}

pub fn (mut r Joint2D) set_node_a(node NodePath) {
    classname := StringName.new("Joint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_node_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Joint2D) get_node_a() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Joint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_a")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Joint2D) set_node_b(node NodePath) {
    classname := StringName.new("Joint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_node_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&node)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Joint2D) get_node_b() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("Joint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_node_b")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Joint2D) set_bias(bias f64) {
    classname := StringName.new("Joint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bias)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Joint2D) get_bias() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Joint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bias")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Joint2D) set_exclude_nodes_from_collision(enable bool) {
    classname := StringName.new("Joint2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_exclude_nodes_from_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Joint2D) get_exclude_nodes_from_collision() bool {
    mut object_out := false
    classname := StringName.new("Joint2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_exclude_nodes_from_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
