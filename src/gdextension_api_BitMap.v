module vgdextension

@[noinit]
pub struct BitMap {
    Resource
}

pub fn (r &BitMap) create(size Vector2i) {
    classname := StringName.new("BitMap")
    fnname := StringName.new("create")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BitMap) create_from_image_alpha(image Image, threshold f64) {
    classname := StringName.new("BitMap")
    fnname := StringName.new("create_from_image_alpha")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 106271684)
    mut args := unsafe { [2]voidptr{} }
    args[0] = image.ptr
    args[1] = unsafe{voidptr(&threshold)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BitMap) set_bitv(position Vector2i, bit bool) {
    classname := StringName.new("BitMap")
    fnname := StringName.new("set_bitv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4153096796)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    args[1] = unsafe{voidptr(&bit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BitMap) set_bit(x i32, y i32, bit bool) {
    classname := StringName.new("BitMap")
    fnname := StringName.new("set_bit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&x)}
    args[1] = unsafe{voidptr(&y)}
    args[2] = unsafe{voidptr(&bit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BitMap) get_bitv(position Vector2i) bool {
    mut object_out := false
    classname := StringName.new("BitMap")
    fnname := StringName.new("get_bitv")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &BitMap) get_bit(x i32, y i32) bool {
    mut object_out := false
    classname := StringName.new("BitMap")
    fnname := StringName.new("get_bit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&x)}
    args[1] = unsafe{voidptr(&y)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &BitMap) set_bit_rect(rect Rect2i, bit bool) {
    classname := StringName.new("BitMap")
    fnname := StringName.new("set_bit_rect")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 472162941)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    args[1] = unsafe{voidptr(&bit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BitMap) get_true_bit_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BitMap")
    fnname := StringName.new("get_true_bit_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &BitMap) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("BitMap")
    fnname := StringName.new("get_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &BitMap) resize(new_size Vector2i) {
    classname := StringName.new("BitMap")
    fnname := StringName.new("resize")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&new_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BitMap) grow_mask(pixels i32, rect Rect2i) {
    classname := StringName.new("BitMap")
    fnname := StringName.new("grow_mask")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3317281434)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&pixels)}
    args[1] = unsafe{voidptr(&rect)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BitMap) convert_to_image() Image {
    mut object_out := Image{}
    classname := StringName.new("BitMap")
    fnname := StringName.new("convert_to_image")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4190603485)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &BitMap) opaque_to_polygons(rect Rect2i, epsilon f64) Array {
    mut object_out := Array{}
    classname := StringName.new("BitMap")
    fnname := StringName.new("opaque_to_polygons")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 48478126)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    args[1] = unsafe{voidptr(&epsilon)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
