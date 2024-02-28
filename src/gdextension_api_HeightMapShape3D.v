module vgdextension

@[noinit]
pub struct HeightMapShape3D {
    Shape3D
}

pub fn (r &HeightMapShape3D) set_map_width(width i32) {
    classname := StringName.new("HeightMapShape3D")
    fnname := StringName.new("set_map_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HeightMapShape3D) get_map_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HeightMapShape3D")
    fnname := StringName.new("get_map_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HeightMapShape3D) set_map_depth(height i32) {
    classname := StringName.new("HeightMapShape3D")
    fnname := StringName.new("set_map_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HeightMapShape3D) get_map_depth() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HeightMapShape3D")
    fnname := StringName.new("get_map_depth")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &HeightMapShape3D) set_map_data(data PackedFloat32Array) {
    classname := StringName.new("HeightMapShape3D")
    fnname := StringName.new("set_map_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &HeightMapShape3D) get_map_data() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("HeightMapShape3D")
    fnname := StringName.new("get_map_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
