module vgdextension

@[noinit]
pub struct Translation {
    Resource
}

pub interface ITranslationGetPluralMessage {
    mut:
    virt_get_plural_message(src_message StringName, src_plural_message StringName, n i32, context StringName) StringName
}

pub fn (r &Translation) uget_plural_message(src_message string, src_plural_message string, n i32, context string) string {
    mut object_out := StringName{}
    classname := StringName.new("Translation")
    fnname := StringName.new("_get_plural_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(src_message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(src_plural_message)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&n)}
    arg_sn3 := StringName.new(context)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub interface ITranslationGetMessage {
    mut:
    virt_get_message(src_message StringName, context StringName) StringName
}

pub fn (r &Translation) uget_message(src_message string, context string) string {
    mut object_out := StringName{}
    classname := StringName.new("Translation")
    fnname := StringName.new("_get_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(src_message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(context)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Translation) set_locale(locale string) {
    classname := StringName.new("Translation")
    fnname := StringName.new("set_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(locale)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Translation) get_locale() string {
    mut object_out := String{}
    classname := StringName.new("Translation")
    fnname := StringName.new("get_locale")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Translation) add_message(src_message string, xlated_message string, context string) {
    classname := StringName.new("Translation")
    fnname := StringName.new("add_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3898530326)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(src_message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(xlated_message)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := StringName.new(context)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Translation) add_plural_message(src_message string, xlated_messages PackedStringArray, context string) {
    classname := StringName.new("Translation")
    fnname := StringName.new("add_plural_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2356982266)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(src_message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&xlated_messages)}
    arg_sn2 := StringName.new(context)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Translation) get_message(src_message string, context string) string {
    mut object_out := StringName{}
    classname := StringName.new("Translation")
    fnname := StringName.new("get_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1829228469)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(src_message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(context)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Translation) get_plural_message(src_message string, src_plural_message string, n i32, context string) string {
    mut object_out := StringName{}
    classname := StringName.new("Translation")
    fnname := StringName.new("get_plural_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 229954002)
    mut args := unsafe { [4]voidptr{} }
    arg_sn0 := StringName.new(src_message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(src_plural_message)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&n)}
    arg_sn3 := StringName.new(context)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Translation) erase_message(src_message string, context string) {
    classname := StringName.new("Translation")
    fnname := StringName.new("erase_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3959009644)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(src_message)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(context)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Translation) get_message_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Translation")
    fnname := StringName.new("get_message_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Translation) get_translated_message_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Translation")
    fnname := StringName.new("get_translated_message_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Translation) get_message_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Translation")
    fnname := StringName.new("get_message_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
