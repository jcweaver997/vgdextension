module vgdextension

@[noinit]
pub struct ConfigFile {
    RefCounted
}

pub fn (mut r ConfigFile) set_value(section String, key String, value Variant) {
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("set_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2504492430)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&section)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &ConfigFile) get_value(section String, key String, default Variant) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 89809366)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&section)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&default)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ConfigFile) has_section(section String) bool {
    mut object_out := false
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("has_section")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&section)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ConfigFile) has_section_key(section String, key String) bool {
    mut object_out := false
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("has_section_key")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 820780508)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&section)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ConfigFile) get_sections() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_sections")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ConfigFile) get_section_keys(section String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("get_section_keys")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&section)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ConfigFile) erase_section(section String) {
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("erase_section")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&section)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ConfigFile) erase_section_key(section String, key String) {
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("erase_section_key")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&section)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r ConfigFile) load(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("load")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ConfigFile) parse(data String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("parse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ConfigFile) save(path String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("save")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ConfigFile) encode_to_text() String {
    mut object_out := String{}
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("encode_to_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r ConfigFile) load_encrypted(path String, key PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("load_encrypted")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 887037711)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ConfigFile) load_encrypted_pass(path String, password String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("load_encrypted_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&password)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ConfigFile) save_encrypted(path String, key PackedByteArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("save_encrypted")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 887037711)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ConfigFile) save_encrypted_pass(path String, password String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("save_encrypted_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&password)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ConfigFile) clear() {
    classname := StringName.new("ConfigFile")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
