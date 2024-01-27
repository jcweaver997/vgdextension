module vgdextension

pub type HeightMapShape3D = voidptr

pub fn (mut r HeightMapShape3D) set_map_width(width i32) {
    classname := StringName.new("HeightMapShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_map_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &HeightMapShape3D) get_map_width() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HeightMapShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_map_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r HeightMapShape3D) set_map_depth(height i32) {
    classname := StringName.new("HeightMapShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_map_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &HeightMapShape3D) get_map_depth() i32 {
    mut object_out := i32(0)
    classname := StringName.new("HeightMapShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_map_depth")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r HeightMapShape3D) set_map_data(data PackedFloat32Array) {
    classname := StringName.new("HeightMapShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_map_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2899603908)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &HeightMapShape3D) get_map_data() PackedFloat32Array {
    mut object_out := PackedFloat32Array{}
    classname := StringName.new("HeightMapShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_map_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 675695659)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
