module vgdextension

pub type CompressedTexture3D = voidptr

pub fn (mut r CompressedTexture3D) load(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("CompressedTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("load")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &CompressedTexture3D) get_load_path() String {
    mut object_out := String{}
    classname := StringName.new("CompressedTexture3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_load_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
