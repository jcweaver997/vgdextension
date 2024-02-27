module vgdextension

@[noinit]
pub struct Marshalls {
    Object
}

pub fn Marshalls.get_singleton() Marshalls {
    sn := StringName.new("Marshalls")
    o := Marshalls{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (mut r Marshalls) variant_to_base64(variant Variant, full_objects bool) string {
    mut object_out := String{}
    classname := StringName.new("Marshalls")
    fnname := StringName.new("variant_to_base64")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3876248563)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&variant)}
    args[1] = unsafe{voidptr(&full_objects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Marshalls) base64_to_variant(base64_str string, allow_objects bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Marshalls")
    fnname := StringName.new("base64_to_variant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 218087648)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(base64_str)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&allow_objects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Marshalls) raw_to_base64(array PackedByteArray) string {
    mut object_out := String{}
    classname := StringName.new("Marshalls")
    fnname := StringName.new("raw_to_base64")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3999417757)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&array)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Marshalls) base64_to_raw(base64_str string) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Marshalls")
    fnname := StringName.new("base64_to_raw")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659035735)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(base64_str)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Marshalls) utf8_to_base64(utf8_str string) string {
    mut object_out := String{}
    classname := StringName.new("Marshalls")
    fnname := StringName.new("utf8_to_base64")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(utf8_str)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Marshalls) base64_to_utf8(base64_str string) string {
    mut object_out := String{}
    classname := StringName.new("Marshalls")
    fnname := StringName.new("base64_to_utf8")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(base64_str)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
