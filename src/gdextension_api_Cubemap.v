module vgdextension

@[noinit]
pub struct Cubemap {
    ImageTextureLayered
}

pub fn (r &Cubemap) create_placeholder() Resource {
    mut object_out := Resource{}
    classname := StringName.new("Cubemap")
    fnname := StringName.new("create_placeholder")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
