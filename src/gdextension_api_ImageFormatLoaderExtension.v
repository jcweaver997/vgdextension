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
    fnname := StringName.new("_get_recognized_extensions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub interface IImageFormatLoaderExtensionLoadImage {
    mut:
    virt_load_image(image Image, fileaccess FileAccess, flags ImageFormatLoaderLoaderFlags, scale f64) GDError
}

pub fn (mut r ImageFormatLoaderExtension) uload_image(image Image, fileaccess FileAccess, flags ImageFormatLoaderLoaderFlags, scale f64) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ImageFormatLoaderExtension")
    fnname := StringName.new("_load_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = image.ptr
    args[1] = fileaccess.ptr
    i64_flags := i64(flags)
    args[2] = unsafe{voidptr(&i64_flags)}
    args[3] = unsafe{voidptr(&scale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ImageFormatLoaderExtension) add_format_loader() {
    classname := StringName.new("ImageFormatLoaderExtension")
    fnname := StringName.new("add_format_loader")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ImageFormatLoaderExtension) remove_format_loader() {
    classname := StringName.new("ImageFormatLoaderExtension")
    fnname := StringName.new("remove_format_loader")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
