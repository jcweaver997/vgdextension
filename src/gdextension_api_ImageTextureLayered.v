pub type ImageTextureLayered = voidptr

pub fn (mut r ImageTextureLayered) create_from_images(images Array) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ImageTextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("create_from_images")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2785773503)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&images)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ImageTextureLayered) update_layer(image Image, layer i32) {
    classname := StringName.new("ImageTextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("update_layer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3331733361)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
