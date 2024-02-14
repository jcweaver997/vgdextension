module vgdextension

@[noinit]
pub struct CompressedTexture3D {
    Texture3D
}

pub fn (mut r CompressedTexture3D) load(path String) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("CompressedTexture3D")
    fnname := StringName.new("load")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &CompressedTexture3D) get_load_path() String {
    mut object_out := String{}
    classname := StringName.new("CompressedTexture3D")
    fnname := StringName.new("get_load_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
