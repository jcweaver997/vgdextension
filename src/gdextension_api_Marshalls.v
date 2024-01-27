module vgdextension

pub type Marshalls = voidptr

pub fn (mut r Marshalls) variant_to_base64(variant Variant, full_objects bool) String {
    mut object_out := String{}
    classname := StringName.new("Marshalls")
    defer { classname.deinit() }
    fnname := StringName.new("variant_to_base64")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3876248563)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&variant)}
    args[1] = unsafe{voidptr(&full_objects)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Marshalls) base64_to_variant(base64_str String, allow_objects bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Marshalls")
    defer { classname.deinit() }
    fnname := StringName.new("base64_to_variant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 218087648)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&base64_str)}
    args[1] = unsafe{voidptr(&allow_objects)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Marshalls) raw_to_base64(array PackedByteArray) String {
    mut object_out := String{}
    classname := StringName.new("Marshalls")
    defer { classname.deinit() }
    fnname := StringName.new("raw_to_base64")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3999417757)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&array)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Marshalls) base64_to_raw(base64_str String) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Marshalls")
    defer { classname.deinit() }
    fnname := StringName.new("base64_to_raw")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659035735)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base64_str)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Marshalls) utf8_to_base64(utf8_str String) String {
    mut object_out := String{}
    classname := StringName.new("Marshalls")
    defer { classname.deinit() }
    fnname := StringName.new("utf8_to_base64")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&utf8_str)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Marshalls) base64_to_utf8(base64_str String) String {
    mut object_out := String{}
    classname := StringName.new("Marshalls")
    defer { classname.deinit() }
    fnname := StringName.new("base64_to_utf8")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&base64_str)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
