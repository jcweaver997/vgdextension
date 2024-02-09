module vgdextension

pub struct ImageTexture3D {
    Texture3D
}

pub fn (mut r ImageTexture3D) create(format ImageFormat, width i32, height i32, depth i32, use_mipmaps bool, data Array) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ImageTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130379827)
    mut args := unsafe { [6]voidptr{} }
    args[0] = unsafe{voidptr(&format)}
    args[1] = unsafe{voidptr(&width)}
    args[2] = unsafe{voidptr(&height)}
    args[3] = unsafe{voidptr(&depth)}
    args[4] = unsafe{voidptr(&use_mipmaps)}
    args[5] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ImageTexture3D) update(data Array) {
    classname := StringName.new("ImageTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 381264803)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
