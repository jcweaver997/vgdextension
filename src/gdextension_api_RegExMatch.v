pub type RegExMatch = voidptr

pub fn (r &RegExMatch) get_subject() String {
    mut object_out := String{}
    classname := StringName.new("RegExMatch")
    defer { classname.deinit() }
    fnname := StringName.new("get_subject")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RegExMatch) get_group_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("RegExMatch")
    defer { classname.deinit() }
    fnname := StringName.new("get_group_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RegExMatch) get_names() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("RegExMatch")
    defer { classname.deinit() }
    fnname := StringName.new("get_names")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RegExMatch) get_strings() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("RegExMatch")
    defer { classname.deinit() }
    fnname := StringName.new("get_strings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &RegExMatch) get_string(name Variant) String {
    mut object_out := String{}
    classname := StringName.new("RegExMatch")
    defer { classname.deinit() }
    fnname := StringName.new("get_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 687115856)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RegExMatch) get_start(name Variant) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RegExMatch")
    defer { classname.deinit() }
    fnname := StringName.new("get_start")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 490464691)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &RegExMatch) get_end(name Variant) i32 {
    mut object_out := i32(0)
    classname := StringName.new("RegExMatch")
    defer { classname.deinit() }
    fnname := StringName.new("get_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 490464691)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
