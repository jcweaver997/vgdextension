module vgdextension

pub struct GLTFBufferView {
    Resource
}

pub fn (mut r GLTFBufferView) get_buffer() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFBufferView")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFBufferView) set_buffer(buffer i32) {
    classname := StringName.new("GLTFBufferView")
    defer { classname.deinit() }
    fnname := StringName.new("set_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFBufferView) get_byte_offset() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFBufferView")
    defer { classname.deinit() }
    fnname := StringName.new("get_byte_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFBufferView) set_byte_offset(byte_offset i32) {
    classname := StringName.new("GLTFBufferView")
    defer { classname.deinit() }
    fnname := StringName.new("set_byte_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&byte_offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFBufferView) get_byte_length() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFBufferView")
    defer { classname.deinit() }
    fnname := StringName.new("get_byte_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFBufferView) set_byte_length(byte_length i32) {
    classname := StringName.new("GLTFBufferView")
    defer { classname.deinit() }
    fnname := StringName.new("set_byte_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&byte_length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFBufferView) get_byte_stride() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFBufferView")
    defer { classname.deinit() }
    fnname := StringName.new("get_byte_stride")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFBufferView) set_byte_stride(byte_stride i32) {
    classname := StringName.new("GLTFBufferView")
    defer { classname.deinit() }
    fnname := StringName.new("set_byte_stride")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&byte_stride)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GLTFBufferView) get_indices() bool {
    mut object_out := false
    classname := StringName.new("GLTFBufferView")
    defer { classname.deinit() }
    fnname := StringName.new("get_indices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2240911060)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFBufferView) set_indices(indices bool) {
    classname := StringName.new("GLTFBufferView")
    defer { classname.deinit() }
    fnname := StringName.new("set_indices")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&indices)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
