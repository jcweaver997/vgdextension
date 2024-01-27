module vgdextension

pub type CubemapArray = voidptr

pub fn (r &CubemapArray) create_placeholder() Resource {
    mut object_out := Resource(unsafe{nil})
    classname := StringName.new("CubemapArray")
    defer { classname.deinit() }
    fnname := StringName.new("create_placeholder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
