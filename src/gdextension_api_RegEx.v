pub type RegEx = voidptr

pub fn RegEx.create_from_string(pattern String) RegEx {
    mut object_out := RegEx(unsafe{nil})
    classname := StringName.new("RegEx")
    defer { classname.deinit() }
    fnname := StringName.new("create_from_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2150300909)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pattern)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r RegEx) clear() {
    classname := StringName.new("RegEx")
    defer { classname.deinit() }
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r RegEx) compile(pattern String) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("RegEx")
    defer { classname.deinit() }
    fnname := StringName.new("compile")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166001499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&pattern)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RegEx) search(subject String, offset i32, end i32) RegExMatch {
    mut object_out := RegExMatch(unsafe{nil})
    classname := StringName.new("RegEx")
    defer { classname.deinit() }
    fnname := StringName.new("search")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4087180739)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&subject)}
    args[1] = unsafe{voidptr(&offset)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RegEx) search_all(subject String, offset i32, end i32) Array {
    mut object_out := Array{}
    classname := StringName.new("RegEx")
    defer { classname.deinit() }
    fnname := StringName.new("search_all")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3354100289)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&subject)}
    args[1] = unsafe{voidptr(&offset)}
    args[2] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RegEx) sub(subject String, replacement String, all bool, offset i32, end i32) String {
    mut object_out := String{}
    classname := StringName.new("RegEx")
    defer { classname.deinit() }
    fnname := StringName.new("sub")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 758293621)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&subject)}
    args[1] = unsafe{voidptr(&replacement)}
    args[2] = unsafe{voidptr(&all)}
    args[3] = unsafe{voidptr(&offset)}
    args[4] = unsafe{voidptr(&end)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RegEx) is_valid() bool {
    mut object_out := false
    classname := StringName.new("RegEx")
    defer { classname.deinit() }
    fnname := StringName.new("is_valid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RegEx) get_pattern() String {
    mut object_out := String{}
    classname := StringName.new("RegEx")
    defer { classname.deinit() }
    fnname := StringName.new("get_pattern")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RegEx) get_group_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RegEx")
    defer { classname.deinit() }
    fnname := StringName.new("get_group_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RegEx) get_names() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("RegEx")
    defer { classname.deinit() }
    fnname := StringName.new("get_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
