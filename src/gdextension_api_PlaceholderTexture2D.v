module vgdextension

pub type PlaceholderTexture2D = voidptr

pub fn (mut r PlaceholderTexture2D) set_size(size Vector2) {
    classname := StringName.new("PlaceholderTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
