module vgdextension

pub struct PlaceholderTexture3D {
    Texture3D
}

pub fn (mut r PlaceholderTexture3D) set_size(size Vector3i) {
    classname := StringName.new("PlaceholderTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 560364750)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &PlaceholderTexture3D) get_size() Vector3i {
    mut object_out := Vector3i{}
    classname := StringName.new("PlaceholderTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2785653706)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
