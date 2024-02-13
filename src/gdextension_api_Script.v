module vgdextension

@[noinit]
pub struct Script {
    Resource
}

pub fn (r &Script) can_instantiate() bool {
    mut object_out := false
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("can_instantiate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Script) instance_has(base_object Object) bool {
    mut object_out := false
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("instance_has")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 397768994)
    mut args := unsafe { [1]voidptr{} }
    args[0] = base_object.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Script) has_source_code() bool {
    mut object_out := false
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("has_source_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Script) get_source_code() String {
    mut object_out := String{}
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("get_source_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Script) set_source_code(source String) {
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("set_source_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&source)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Script) reload(keep_state bool) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("reload")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1633102583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keep_state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Script) get_base_script() Script {
    mut object_out := Script{}
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("get_base_script")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 278624046)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Script) get_instance_base_type() StringName {
    mut object_out := StringName{}
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("get_instance_base_type")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Script) has_script_signal(signal_name StringName) bool {
    mut object_out := false
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("has_script_signal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&signal_name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Script) get_script_property_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("get_script_property_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Script) get_script_method_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("get_script_method_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Script) get_script_signal_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("get_script_signal_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Script) get_script_constant_map() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("get_script_constant_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Script) get_property_default_value(property StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("get_property_default_value")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&property)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Script) is_tool() bool {
    mut object_out := false
    classname := StringName.new("Script")
    defer { classname.deinit() }
    fnname := StringName.new("is_tool")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
