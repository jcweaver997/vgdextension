module vgdextension

pub type GLTFLight = voidptr

pub fn GLTFLight.from_node(light_node Light3D) GLTFLight {
    mut object_out := GLTFLight(unsafe{nil})
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("from_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3907677874)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&light_node)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &GLTFLight) to_node() Light3D {
    mut object_out := Light3D(unsafe{nil})
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("to_node")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2040811672)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn GLTFLight.from_dictionary(dictionary Dictionary) GLTFLight {
    mut object_out := GLTFLight(unsafe{nil})
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("from_dictionary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4057087208)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&dictionary)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &GLTFLight) to_dictionary() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("to_dictionary")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFLight) get_color() Color {
    mut object_out := Color{}
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("get_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3200896285)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFLight) set_color(color Color) {
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("set_color")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2920490490)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFLight) get_intensity() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("get_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFLight) set_intensity(intensity f32) {
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("set_intensity")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFLight) get_light_type() String {
    mut object_out := String{}
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("get_light_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFLight) set_light_type(light_type String) {
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("set_light_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFLight) get_range() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("get_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFLight) set_range(range f32) {
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("set_range")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFLight) get_inner_cone_angle() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("get_inner_cone_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFLight) set_inner_cone_angle(inner_cone_angle f32) {
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("set_inner_cone_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GLTFLight) get_outer_cone_angle() f32 {
    mut object_out := f32(0)
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("get_outer_cone_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 191475506)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GLTFLight) set_outer_cone_angle(outer_cone_angle f32) {
    classname := StringName.new("GLTFLight")
    defer { classname.deinit() }
    fnname := StringName.new("set_outer_cone_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
