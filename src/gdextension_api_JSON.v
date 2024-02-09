module vgdextension

pub struct JSON {
    Resource
}

pub fn JSON.stringify(data Variant, indent String, sort_keys bool, full_precision bool) String {
    mut object_out := String{}
    classname := StringName.new("JSON")
    defer { classname.deinit() }
    fnname := StringName.new("stringify")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2656701787)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    args[1] = unsafe{voidptr(&indent)}
    args[2] = unsafe{voidptr(&sort_keys)}
    args[3] = unsafe{voidptr(&full_precision)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn JSON.parse_string(json_string String) Variant {
    mut object_out := Variant{}
    classname := StringName.new("JSON")
    defer { classname.deinit() }
    fnname := StringName.new("parse_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 309047738)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&json_string)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r JSON) parse(json_text String, keep_text bool) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("JSON")
    defer { classname.deinit() }
    fnname := StringName.new("parse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 885841341)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&json_text)}
    args[1] = unsafe{voidptr(&keep_text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &JSON) get_data() Variant {
    mut object_out := Variant{}
    classname := StringName.new("JSON")
    defer { classname.deinit() }
    fnname := StringName.new("get_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r JSON) set_data(data Variant) {
    classname := StringName.new("JSON")
    defer { classname.deinit() }
    fnname := StringName.new("set_data")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &JSON) get_parsed_text() String {
    mut object_out := String{}
    classname := StringName.new("JSON")
    defer { classname.deinit() }
    fnname := StringName.new("get_parsed_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &JSON) get_error_line() i32 {
    mut object_out := i32(0)
    classname := StringName.new("JSON")
    defer { classname.deinit() }
    fnname := StringName.new("get_error_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &JSON) get_error_message() String {
    mut object_out := String{}
    classname := StringName.new("JSON")
    defer { classname.deinit() }
    fnname := StringName.new("get_error_message")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
