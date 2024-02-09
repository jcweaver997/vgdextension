module vgdextension

pub struct Translation {
    Resource
}

pub interface ITranslationGetPluralMessage {
    mut:
    virt_get_plural_message(src_message StringName, src_plural_message StringName, n i32, context StringName) StringName
}

pub fn (r &Translation) uget_plural_message(src_message StringName, src_plural_message StringName, n i32, context StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("_get_plural_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&src_message)}
    args[1] = unsafe{voidptr(&src_plural_message)}
    args[2] = unsafe{voidptr(&n)}
    args[3] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub interface ITranslationGetMessage {
    mut:
    virt_get_message(src_message StringName, context StringName) StringName
}

pub fn (r &Translation) uget_message(src_message StringName, context StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("_get_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&src_message)}
    args[1] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Translation) set_locale(locale String) {
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("set_locale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&locale)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Translation) get_locale() String {
    mut object_out := String{}
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("get_locale")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Translation) add_message(src_message StringName, xlated_message StringName, context StringName) {
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("add_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 971803314)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&src_message)}
    args[1] = unsafe{voidptr(&xlated_message)}
    args[2] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Translation) add_plural_message(src_message StringName, xlated_messages PackedStringArray, context StringName) {
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("add_plural_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 360316719)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&src_message)}
    args[1] = unsafe{voidptr(&xlated_messages)}
    args[2] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Translation) get_message(src_message StringName, context StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("get_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 58037827)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&src_message)}
    args[1] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Translation) get_plural_message(src_message StringName, src_plural_message StringName, n i32, context StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("get_plural_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1333931916)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&src_message)}
    args[1] = unsafe{voidptr(&src_plural_message)}
    args[2] = unsafe{voidptr(&n)}
    args[3] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Translation) erase_message(src_message StringName, context StringName) {
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("erase_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3919944288)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&src_message)}
    args[1] = unsafe{voidptr(&context)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Translation) get_message_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("get_message_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Translation) get_translated_message_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("get_translated_message_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Translation) get_message_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Translation")
    defer { classname.deinit() }
    fnname := StringName.new("get_message_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
