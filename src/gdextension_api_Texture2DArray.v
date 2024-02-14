module vgdextension

@[noinit]
pub struct Texture2DArray {
    ImageTextureLayered
}

pub fn (r &Texture2DArray) create_placeholder() Resource {
    mut object_out := Resource{}
    classname := StringName.new("Texture2DArray")
    fnname := StringName.new("create_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
