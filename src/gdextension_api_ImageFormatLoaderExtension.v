module vgdextension

@[noinit]
pub struct ImageFormatLoaderExtension {
    ImageFormatLoader
}

pub interface IImageFormatLoaderExtensionGetRecognizedExtensions {
    mut:
    virt_get_recognized_extensions() PackedStringArray
}

pub fn (r &ImageFormatLoaderExtension) uget_recognized_extensions() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ImageFormatLoaderExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_get_recognized_extensions")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub interface IImageFormatLoaderExtensionLoadImage {
    mut:
    virt_load_image(image Image, fileaccess FileAccess, flags ImageFormatLoaderLoaderFlags, scale f64) GDError
}

pub fn (mut r ImageFormatLoaderExtension) uload_image(image Image, fileaccess FileAccess, flags ImageFormatLoaderLoaderFlags, scale f64) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ImageFormatLoaderExtension")
    defer { classname.deinit() }
    fnname := StringName.new("_load_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = image.ptr
    args[1] = fileaccess.ptr
    args[2] = unsafe{voidptr(&flags)}
    args[3] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ImageFormatLoaderExtension) add_format_loader() {
    classname := StringName.new("ImageFormatLoaderExtension")
    defer { classname.deinit() }
    fnname := StringName.new("add_format_loader")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r ImageFormatLoaderExtension) remove_format_loader() {
    classname := StringName.new("ImageFormatLoaderExtension")
    defer { classname.deinit() }
    fnname := StringName.new("remove_format_loader")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
