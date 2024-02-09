module vgdextension

pub struct GLTFAccessor {
    Resource
}

pub fn (mut r GLTFAccessor) get_buffer_view() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffer_view")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_buffer_view(buffer_view i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_buffer_view")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer_view)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_byte_offset() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_byte_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_byte_offset(byte_offset i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_byte_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&byte_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_component_type() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_component_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_component_type(component_type i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_component_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&component_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_normalized() bool {
    mut object_out := false
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_normalized")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_normalized(normalized bool) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_normalized")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&normalized)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_count(count i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_type() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_type(type_name i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&type_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_min() PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 148677866)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_min(min PackedFloat64Array) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_min")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2576592201)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&min)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_max() PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 148677866)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_max(max PackedFloat64Array) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_max")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2576592201)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&max)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_sparse_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_sparse_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_sparse_count(sparse_count i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_sparse_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sparse_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_sparse_indices_buffer_view() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_sparse_indices_buffer_view")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_sparse_indices_buffer_view(sparse_indices_buffer_view i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_sparse_indices_buffer_view")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sparse_indices_buffer_view)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_sparse_indices_byte_offset() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_sparse_indices_byte_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_sparse_indices_byte_offset(sparse_indices_byte_offset i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_sparse_indices_byte_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sparse_indices_byte_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_sparse_indices_component_type() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_sparse_indices_component_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_sparse_indices_component_type(sparse_indices_component_type i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_sparse_indices_component_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sparse_indices_component_type)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_sparse_values_buffer_view() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_sparse_values_buffer_view")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_sparse_values_buffer_view(sparse_values_buffer_view i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_sparse_values_buffer_view")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sparse_values_buffer_view)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFAccessor) get_sparse_values_byte_offset() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("get_sparse_values_byte_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFAccessor) set_sparse_values_byte_offset(sparse_values_byte_offset i32) {
    classname := StringName.new("GLTFAccessor")
    defer { classname.deinit() }
    fnname := StringName.new("set_sparse_values_byte_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sparse_values_byte_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
