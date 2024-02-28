module vgdextension

@[noinit]
pub struct RegEx {
    RefCounted
}

pub fn RegEx.create_from_string(pattern string) RegEx {
    mut object_out := RegEx{}
    classname := StringName.new("RegEx")
    fnname := StringName.new("create_from_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2150300909)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(pattern)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegEx) clear() {
    classname := StringName.new("RegEx")
    fnname := StringName.new("clear")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &RegEx) compile(pattern string) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("RegEx")
    fnname := StringName.new("compile")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(pattern)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &RegEx) search(subject string, offset i32, end i32) RegExMatch {
    mut object_out := RegExMatch{}
    classname := StringName.new("RegEx")
    fnname := StringName.new("search")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3365977994)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(subject)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&offset)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegEx) search_all(subject string, offset i32, end i32) Array {
    mut object_out := Array{}
    classname := StringName.new("RegEx")
    fnname := StringName.new("search_all")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 849021363)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := String.new(subject)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&offset)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegEx) sub(subject string, replacement string, all bool, offset i32, end i32) string {
    mut object_out := String{}
    classname := StringName.new("RegEx")
    fnname := StringName.new("sub")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 54019702)
    mut args := unsafe { [5]voidptr{} }
    arg_sn0 := String.new(subject)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := String.new(replacement)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&all)}
    args[3] = unsafe{voidptr(&offset)}
    args[4] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &RegEx) is_valid() bool {
    mut object_out := false
    classname := StringName.new("RegEx")
    fnname := StringName.new("is_valid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegEx) get_pattern() string {
    mut object_out := String{}
    classname := StringName.new("RegEx")
    fnname := StringName.new("get_pattern")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &RegEx) get_group_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RegEx")
    fnname := StringName.new("get_group_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &RegEx) get_names() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("RegEx")
    fnname := StringName.new("get_names")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
