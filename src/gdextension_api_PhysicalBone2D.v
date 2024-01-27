pub type PhysicalBone2D = voidptr

pub fn (r &PhysicalBone2D) get_joint() Joint2D {
    mut object_out := Joint2D(unsafe{nil})
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_joint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3582132112)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicalBone2D) get_auto_configure_joint() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_auto_configure_joint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone2D) set_auto_configure_joint(auto_configure_joint bool) {
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_auto_configure_joint")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r PhysicalBone2D) set_simulate_physics(simulate_physics bool) {
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_simulate_physics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone2D) get_simulate_physics() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_simulate_physics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PhysicalBone2D) is_simulating_physics() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_simulating_physics")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone2D) set_bone2d_nodepath(nodepath NodePath) {
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone2d_nodepath")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone2D) get_bone2d_nodepath() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone2d_nodepath")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone2D) set_bone2d_index(bone_index i32) {
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone2d_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone2D) get_bone2d_index() i32 {
    mut object_out := i32(0)
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone2d_index")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r PhysicalBone2D) set_follow_bone_when_simulating(follow_bone bool) {
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_follow_bone_when_simulating")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &PhysicalBone2D) get_follow_bone_when_simulating() bool {
    mut object_out := false
    classname := StringName.new("PhysicalBone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_follow_bone_when_simulating")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
