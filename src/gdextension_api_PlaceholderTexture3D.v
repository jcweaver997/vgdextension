module vgdextension

@[noinit]
pub struct PlaceholderTexture3D {
    Texture3D
}

pub fn (r &PlaceholderTexture3D) set_size(size Vector3i) {
    classname := StringName.new("PlaceholderTexture3D")
    fnname := StringName.new("set_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 560364750)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &PlaceholderTexture3D) get_size() Vector3i {
    mut object_out := Vector3i{}
    classname := StringName.new("PlaceholderTexture3D")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2785653706)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
