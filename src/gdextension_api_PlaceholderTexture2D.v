module vgdextension

@[noinit]
pub struct PlaceholderTexture2D {
    Texture2D
}

pub fn (mut r PlaceholderTexture2D) set_size(size Vector2) {
    classname := StringName.new("PlaceholderTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
