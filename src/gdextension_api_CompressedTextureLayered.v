module vgdextension

@[noinit]
pub struct CompressedTextureLayered {
    TextureLayered
}

pub fn (r &CompressedTextureLayered) load(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("CompressedTextureLayered")
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
pub fn (r &CompressedTextureLayered) get_load_path() string {
    mut object_out := String{}
    classname := StringName.new("CompressedTextureLayered")
    fnname := StringName.new("get_load_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
