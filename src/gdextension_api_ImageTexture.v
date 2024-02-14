module vgdextension

@[noinit]
pub struct ImageTexture {
    Texture2D
}

pub fn ImageTexture.create_from_image(image Image) ImageTexture {
    mut object_out := ImageTexture{}
    classname := StringName.new("ImageTexture")
    fnname := StringName.new("create_from_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2775144163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = image.ptr
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ImageTexture) get_format() ImageFormat {
    mut object_out := i64(ImageFormat.format_l8)
    classname := StringName.new("ImageTexture")
    fnname := StringName.new("get_format")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{ImageFormat(object_out)}
}
pub fn (mut r ImageTexture) set_image(image Image) {
    classname := StringName.new("ImageTexture")
    fnname := StringName.new("set_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImageTexture) update(image Image) {
    classname := StringName.new("ImageTexture")
    fnname := StringName.new("update")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImageTexture) set_size_override(size Vector2i) {
    classname := StringName.new("ImageTexture")
    fnname := StringName.new("set_size_override")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
