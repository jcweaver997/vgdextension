module vgdextension

@[noinit]
pub struct CompressedTexture2D {
    Texture2D
}

pub fn (r &CompressedTexture2D) load(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("CompressedTexture2D")
    fnname := StringName.new("load")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &CompressedTexture2D) get_load_path() string {
    mut object_out := String{}
    classname := StringName.new("CompressedTexture2D")
    fnname := StringName.new("get_load_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
