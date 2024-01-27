pub type VisualInstance3D = voidptr

pub fn (r &VisualInstance3D) uget_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("_get_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualInstance3D) set_base(base RID) {
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_base")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualInstance3D) get_base() RID {
    mut object_out := RID{}
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_base")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualInstance3D) get_instance() RID {
    mut object_out := RID{}
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualInstance3D) set_layer_mask(mask i32) {
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_layer_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualInstance3D) get_layer_mask() i32 {
    mut object_out := i32(0)
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_layer_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualInstance3D) set_layer_mask_value(layer_number i32, value bool) {
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_layer_mask_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 300928843)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
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
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualInstance3D) set_sorting_offset(offset f32) {
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sorting_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualInstance3D) get_sorting_offset() f32 {
    mut object_out := f32(0)
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_sorting_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualInstance3D) set_sorting_use_aabb_center(enabled bool) {
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_sorting_use_aabb_center")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualInstance3D) is_sorting_use_aabb_center() bool {
    mut object_out := false
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_sorting_use_aabb_center")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &VisualInstance3D) get_aabb() AABB {
    mut object_out := AABB{}
    classname := StringName.new("VisualInstance3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_aabb")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1068685055)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
