module vgdextension

@[noinit]
pub struct JSON {
    Resource
}

pub fn JSON.stringify(data Variant, indent string, sort_keys bool, full_precision bool) string {
    mut object_out := String{}
    classname := StringName.new("JSON")
    fnname := StringName.new("stringify")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 462733549)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    arg_sn1 := String.new(indent)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&sort_keys)}
    args[3] = unsafe{voidptr(&full_precision)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn JSON.parse_string(json_string string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("JSON")
    fnname := StringName.new("parse_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 309047738)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(json_string)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r JSON) parse(json_text string, keep_text bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("JSON")
    fnname := StringName.new("parse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 885841341)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(json_text)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&keep_text)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &JSON) get_data() Variant {
    mut object_out := Variant{}
    classname := StringName.new("JSON")
    fnname := StringName.new("get_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1214101251)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r JSON) set_data(data Variant) {
    classname := StringName.new("JSON")
    fnname := StringName.new("set_data")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1114965689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &JSON) get_parsed_text() string {
    mut object_out := String{}
    classname := StringName.new("JSON")
    fnname := StringName.new("get_parsed_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &JSON) get_error_line() i32 {
    mut object_out := i32(0)
    classname := StringName.new("JSON")
    fnname := StringName.new("get_error_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &JSON) get_error_message() string {
    mut object_out := String{}
    classname := StringName.new("JSON")
    fnname := StringName.new("get_error_message")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
