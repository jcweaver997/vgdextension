module vgdextension

pub enum CSGShape3DOperation {
    operation_union = 0
    operation_intersection = 1
    operation_subtraction = 2
}

pub type CSGShape3D = voidptr

pub fn (r &CSGShape3D) is_root_shape() bool {
    mut object_out := false
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_root_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGShape3D) set_operation(operation CSGShape3DOperation) {
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_operation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 811425055)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGShape3D) get_operation() CSGShape3DOperation {
    mut object_out := CSGShape3DOperation.operation_union
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_operation")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2662425879)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGShape3D) set_snap(snap f32) {
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_snap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGShape3D) get_snap() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_snap")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGShape3D) set_use_collision(operation bool) {
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGShape3D) is_using_collision() bool {
    mut object_out := false
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_collision")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGShape3D) set_collision_layer(layer i32) {
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGShape3D) get_collision_layer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGShape3D) set_collision_mask(mask i32) {
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGShape3D) get_collision_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGShape3D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGShape3D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGShape3D) set_collision_layer_value(layer_number i32, value bool) {
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGShape3D) get_collision_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_layer_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGShape3D) set_collision_priority(priority f32) {
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGShape3D) get_collision_priority() f32 {
    mut object_out := f32(0)
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_collision_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CSGShape3D) set_calculate_tangents(enabled bool) {
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_calculate_tangents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CSGShape3D) is_calculating_tangents() bool {
    mut object_out := false
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_calculating_tangents")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &CSGShape3D) get_meshes() Array {
    mut object_out := Array{}
    classname := StringName.new("CSGShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_meshes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
