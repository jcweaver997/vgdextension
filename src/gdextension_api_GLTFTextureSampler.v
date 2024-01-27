module vgdextension

pub type GLTFTextureSampler = voidptr

pub fn (r &GLTFTextureSampler) get_mag_filter() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFTextureSampler")
    defer { classname.deinit() }
    fnname := StringName.new("get_mag_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFTextureSampler) set_mag_filter(filter_mode i32) {
    classname := StringName.new("GLTFTextureSampler")
    defer { classname.deinit() }
    fnname := StringName.new("set_mag_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFTextureSampler) get_min_filter() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFTextureSampler")
    defer { classname.deinit() }
    fnname := StringName.new("get_min_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFTextureSampler) set_min_filter(filter_mode i32) {
    classname := StringName.new("GLTFTextureSampler")
    defer { classname.deinit() }
    fnname := StringName.new("set_min_filter")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFTextureSampler) get_wrap_s() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFTextureSampler")
    defer { classname.deinit() }
    fnname := StringName.new("get_wrap_s")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFTextureSampler) set_wrap_s(wrap_mode i32) {
    classname := StringName.new("GLTFTextureSampler")
    defer { classname.deinit() }
    fnname := StringName.new("set_wrap_s")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GLTFTextureSampler) get_wrap_t() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFTextureSampler")
    defer { classname.deinit() }
    fnname := StringName.new("get_wrap_t")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFTextureSampler) set_wrap_t(wrap_mode i32) {
    classname := StringName.new("GLTFTextureSampler")
    defer { classname.deinit() }
    fnname := StringName.new("set_wrap_t")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
