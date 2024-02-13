module vgdextension

@[noinit]
pub struct CompressedTextureLayered {
    TextureLayered
}

pub fn (mut r CompressedTextureLayered) load(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("CompressedTextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("load")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CompressedTextureLayered) get_load_path() String {
    mut object_out := String{}
    classname := StringName.new("CompressedTextureLayered")
    defer { classname.deinit() }
    fnname := StringName.new("get_load_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
