module vgdextension

@[noinit]
pub struct ConfigFile {
    RefCounted
}

pub fn (mut r ConfigFile) set_value(section string, key string, value Variant) {
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("set_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2504492430)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(section)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(key)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ConfigFile) get_value(section string, key string, default Variant) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("get_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 89809366)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(section)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(key)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&default)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ConfigFile) has_section(section string) bool {
    mut object_out := false
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("has_section")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3927539163)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(section)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ConfigFile) has_section_key(section string, key string) bool {
    mut object_out := false
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("has_section_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 820780508)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(section)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(key)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ConfigFile) get_sections() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("get_sections")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ConfigFile) get_section_keys(section string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("get_section_keys")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4291131558)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(section)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r ConfigFile) erase_section(section string) {
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("erase_section")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(section)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ConfigFile) erase_section_key(section string, key string) {
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("erase_section_key")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3186203200)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(section)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(key)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r ConfigFile) load(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("load")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ConfigFile) parse(data string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("parse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(data)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ConfigFile) save(path string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("save")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ConfigFile) encode_to_text() string {
    mut object_out := String{}
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("encode_to_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r ConfigFile) load_encrypted(path string, key PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("load_encrypted")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 887037711)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ConfigFile) load_encrypted_pass(path string, password string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("load_encrypted_pass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(password)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ConfigFile) save_encrypted(path string, key PackedByteArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("save_encrypted")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 887037711)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ConfigFile) save_encrypted_pass(path string, password string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("save_encrypted_pass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 852856452)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(password)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r ConfigFile) clear() {
    classname := StringName.new("ConfigFile")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
