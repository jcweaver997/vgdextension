module vgdextension

pub struct ImageTexture {
    Texture2D
}

pub fn ImageTexture.create_from_image(image Image) ImageTexture {
    mut object_out := ImageTexture{}
    classname := StringName.new("ImageTexture")
    defer { classname.deinit() }
    fnname := StringName.new("create_from_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2775144163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = image.ptr
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ImageTexture) get_format() ImageFormat {
    mut object_out := ImageFormat.format_l8
    classname := StringName.new("ImageTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_format")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3847873762)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ImageTexture) set_image(image Image) {
    classname := StringName.new("ImageTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImageTexture) update(image Image) {
    classname := StringName.new("ImageTexture")
    defer { classname.deinit() }
    fnname := StringName.new("update")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 532598488)
    mut args := unsafe { [1]voidptr{} }
    args[0] = image.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ImageTexture) set_size_override(size Vector2i) {
    classname := StringName.new("ImageTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_size_override")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
