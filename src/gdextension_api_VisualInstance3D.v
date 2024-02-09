module vgdextension

pub struct VisualInstance3D {
    Node3D
}

pub interface IVisualInstance3DGetAabb {
    mut:
    virt_get_aabb() AABB
}

pub fn (r &VisualInstance3D) uget_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("_get_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualInstance3D) set_base(base RID) {
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_base")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualInstance3D) get_base() RID {
    mut object_out := RID{}
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_base")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualInstance3D) get_instance() RID {
    mut object_out := RID{}
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualInstance3D) set_layer_mask(mask u32) {
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_layer_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mask)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualInstance3D) get_layer_mask() u32 {
    mut object_out := u32(0)
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_layer_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualInstance3D) set_layer_mask_value(layer_number i32, value bool) {
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_layer_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    args[1] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualInstance3D) get_layer_mask_value(layer_number i32) bool {
    mut object_out := false
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_layer_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&layer_number)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualInstance3D) set_sorting_offset(offset f64) {
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sorting_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualInstance3D) get_sorting_offset() f64 {
    mut object_out := f64(0)
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_sorting_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualInstance3D) set_sorting_use_aabb_center(enabled bool) {
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sorting_use_aabb_center")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualInstance3D) is_sorting_use_aabb_center() bool {
    mut object_out := false
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_sorting_use_aabb_center")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualInstance3D) get_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
