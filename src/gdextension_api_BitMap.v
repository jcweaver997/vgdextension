pub type BitMap = voidptr

pub fn (mut r BitMap) create(size Vector2i) {
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("create")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r BitMap) create_from_image_alpha(image Image, threshold f32) {
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("create_from_image_alpha")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 505265891)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r BitMap) set_bitv(position Vector2i, bit bool) {
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("set_bitv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4153096796)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r BitMap) set_bit(x i32, y i32, bit bool) {
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("set_bit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1383440665)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BitMap) get_bitv(position Vector2i) bool {
    mut object_out := false
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_bitv")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3900751641)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &BitMap) get_bit(x i32, y i32) bool {
    mut object_out := false
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_bit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2522259332)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&x)}
    args[1] = unsafe{voidptr(&y)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r BitMap) set_bit_rect(rect Rect2i, bit bool) {
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("set_bit_rect")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 472162941)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BitMap) get_true_bit_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_true_bit_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &BitMap) get_size() Vector2i {
    mut object_out := Vector2i{}
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3690982128)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BitMap) resize(new_size Vector2i) {
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("resize")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1130785943)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r BitMap) grow_mask(pixels i32, rect Rect2i) {
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("grow_mask")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3317281434)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &BitMap) convert_to_image() Image {
    mut object_out := Image(unsafe{nil})
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("convert_to_image")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4190603485)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &BitMap) opaque_to_polygons(rect Rect2i, epsilon f32) Array {
    mut object_out := Array{}
    classname := StringName.new("BitMap")
    defer { classname.deinit() }
    fnname := StringName.new("opaque_to_polygons")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 876132484)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&rect)}
    args[1] = unsafe{voidptr(&epsilon)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
