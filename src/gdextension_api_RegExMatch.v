module vgdextension

@[noinit]
pub struct RegExMatch {
    RefCounted
}

pub fn (r &RegExMatch) get_subject() String {
    mut object_out := String{}
    classname := StringName.new("RegExMatch")
    fnname := StringName.new("get_subject")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegExMatch) get_group_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RegExMatch")
    fnname := StringName.new("get_group_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegExMatch) get_names() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("RegExMatch")
    fnname := StringName.new("get_names")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegExMatch) get_strings() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("RegExMatch")
    fnname := StringName.new("get_strings")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegExMatch) get_string(name Variant) String {
    mut object_out := String{}
    classname := StringName.new("RegExMatch")
    fnname := StringName.new("get_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 687115856)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegExMatch) get_start(name Variant) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RegExMatch")
    fnname := StringName.new("get_start")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 490464691)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegExMatch) get_end(name Variant) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RegExMatch")
    fnname := StringName.new("get_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 490464691)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
