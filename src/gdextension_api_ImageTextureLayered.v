module vgdextension

@[noinit]
pub struct ImageTextureLayered {
    TextureLayered
}

pub fn (r &ImageTextureLayered) create_from_images(images Array) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ImageTextureLayered")
    fnname := StringName.new("create_from_images")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2785773503)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&images)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ImageTextureLayered) update_layer(image Image, layer i32) {
    classname := StringName.new("ImageTextureLayered")
    fnname := StringName.new("update_layer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3331733361)
    mut args := unsafe { [2]voidptr{} }
    args[0] = image.ptr
    args[1] = unsafe{voidptr(&layer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
