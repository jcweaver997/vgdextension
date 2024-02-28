module vgdextension

pub enum CSGShape3DOperation as i64 {
    operation_union = 0
    operation_intersection = 1
    operation_subtraction = 2
}

@[noinit]
pub struct CSGShape3D {
    GeometryInstance3D
}

pub fn (r &CSGShape3D) is_root_shape() bool {
    mut object_out := false
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("is_root_shape")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGShape3D) set_operation(operation CSGShape3DOperation) {
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("set_operation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 811425055)
    mut args := unsafe { [1]voidptr{} }
    i64_operation := i64(operation)
    args[0] = unsafe{voidptr(&i64_operation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGShape3D) get_operation() CSGShape3DOperation {
    mut object_out := i64(CSGShape3DOperation.operation_union)
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("get_operation")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2662425879)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{CSGShape3DOperation(object_out)}
}
pub fn (r &CSGShape3D) set_snap(snap f64) {
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("set_snap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&snap)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGShape3D) get_snap() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("get_snap")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGShape3D) set_use_collision(operation bool) {
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("set_use_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&operation)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGShape3D) is_using_collision() bool {
    mut object_out := false
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("is_using_collision")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGShape3D) set_collision_layer(layer u32) {
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("set_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGShape3D) get_collision_layer() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("get_collision_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGShape3D) set_collision_mask(mask u32) {
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("set_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGShape3D) get_collision_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("get_collision_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGShape3D) set_collision_mask_value(layer_number i32, value bool) {
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("set_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGShape3D) get_collision_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("get_collision_mask_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGShape3D) set_collision_layer_value(layer_number i32, value bool) {
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("set_collision_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGShape3D) get_collision_layer_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("get_collision_layer_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGShape3D) set_collision_priority(priority f64) {
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("set_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&priority)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGShape3D) get_collision_priority() f64 {
    mut object_out := f64(0)
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("get_collision_priority")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGShape3D) set_calculate_tangents(enabled bool) {
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("set_calculate_tangents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CSGShape3D) is_calculating_tangents() bool {
    mut object_out := false
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("is_calculating_tangents")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CSGShape3D) get_meshes() Array {
    mut object_out := Array{}
    classname := StringName.new("CSGShape3D")
    fnname := StringName.new("get_meshes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3995934104)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
