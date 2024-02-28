module vgdextension

@[noinit]
pub struct ImageTexture3D {
    Texture3D
}

pub fn (r &ImageTexture3D) create(format ImageFormat, width i32, height i32, depth i32, use_mipmaps bool, data Array) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ImageTexture3D")
    fnname := StringName.new("create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130379827)
    mut args := unsafe { [6]voidptr{} }
    i64_format := i64(format)
    args[0] = unsafe{voidptr(&i64_format)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&height)}
    args[3] = unsafe{voidptr(&depth)}
    args[4] = unsafe{voidptr(&use_mipmaps)}
    args[5] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ImageTexture3D) update(data Array) {
    classname := StringName.new("ImageTexture3D")
    fnname := StringName.new("update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
