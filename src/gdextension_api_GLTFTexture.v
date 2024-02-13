module vgdextension

@[noinit]
pub struct GLTFTexture {
    Resource
}

pub fn (r &GLTFTexture) get_src_image() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_src_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFTexture) set_src_image(src_image i32) {
    classname := StringName.new("GLTFTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_src_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&src_image)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GLTFTexture) get_sampler() i32 {
    mut object_out := i32(0)
    classname := StringName.new("GLTFTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_sampler")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFTexture) set_sampler(sampler i32) {
    classname := StringName.new("GLTFTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_sampler")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&sampler)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
