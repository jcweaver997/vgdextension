module vgdextension

@[noinit]
pub struct CubemapArray {
    ImageTextureLayered
}

pub fn (r &CubemapArray) create_placeholder() Resource {
    mut object_out := Resource{}
    classname := StringName.new("CubemapArray")
    fnname := StringName.new("create_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
