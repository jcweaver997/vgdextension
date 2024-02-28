module vgdextension

@[noinit]
pub struct Script {
    Resource
}

pub fn (r &Script) can_instantiate() bool {
    mut object_out := false
    classname := StringName.new("Script")
    fnname := StringName.new("can_instantiate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) instance_has(base_object Object) bool {
    mut object_out := false
    classname := StringName.new("Script")
    fnname := StringName.new("instance_has")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 397768994)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&base_object.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) has_source_code() bool {
    mut object_out := false
    classname := StringName.new("Script")
    fnname := StringName.new("has_source_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) get_source_code() string {
    mut object_out := String{}
    classname := StringName.new("Script")
    fnname := StringName.new("get_source_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Script) set_source_code(source string) {
    classname := StringName.new("Script")
    fnname := StringName.new("set_source_code")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(source)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Script) reload(keep_state bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Script")
    fnname := StringName.new("reload")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1633102583)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&keep_state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &Script) get_base_script() Script {
    mut object_out := Script{}
    classname := StringName.new("Script")
    fnname := StringName.new("get_base_script")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 278624046)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) get_instance_base_type() string {
    mut object_out := StringName{}
    classname := StringName.new("Script")
    fnname := StringName.new("get_instance_base_type")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2002593661)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &Script) has_script_signal(signal_name string) bool {
    mut object_out := false
    classname := StringName.new("Script")
    fnname := StringName.new("has_script_signal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(signal_name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) get_script_property_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Script")
    fnname := StringName.new("get_script_property_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) get_script_method_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Script")
    fnname := StringName.new("get_script_method_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) get_script_signal_list() Array {
    mut object_out := Array{}
    classname := StringName.new("Script")
    fnname := StringName.new("get_script_signal_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) get_script_constant_map() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Script")
    fnname := StringName.new("get_script_constant_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2382534195)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) get_property_default_value(property string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Script")
    fnname := StringName.new("get_property_default_value")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(property)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) is_tool() bool {
    mut object_out := false
    classname := StringName.new("Script")
    fnname := StringName.new("is_tool")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Script) is_abstract() bool {
    mut object_out := false
    classname := StringName.new("Script")
    fnname := StringName.new("is_abstract")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
