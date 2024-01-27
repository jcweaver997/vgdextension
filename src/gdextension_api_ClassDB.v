pub type ClassDB = voidptr

pub fn (r &ClassDB) get_class_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_class_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) get_inheriters_from_class(class StringName) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_inheriters_from_class")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1761182771)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) get_parent_class(class StringName) StringName {
    mut object_out := StringName{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("get_parent_class")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_exists(class StringName) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_exists")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) is_parent_class(class StringName, inherits StringName) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("is_parent_class")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&inherits)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) can_instantiate(class StringName) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("can_instantiate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) instantiate(class StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("instantiate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_has_signal(class StringName, signal StringName) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_has_signal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&signal)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_get_signal(class StringName, signal StringName) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_get_signal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3061114238)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&signal)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_get_signal_list(class StringName, no_inheritance bool) Array {
    mut object_out := Array{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_get_signal_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3504980660)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_get_property_list(class StringName, no_inheritance bool) Array {
    mut object_out := Array{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_get_property_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3504980660)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_get_property(object Object, property StringName) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_get_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2498641674)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    args[1] = unsafe{voidptr(&property)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_set_property(object Object, property StringName, value Variant) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_set_property")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1690314931)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&object)}
    args[1] = unsafe{voidptr(&property)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_has_method(class StringName, method StringName, no_inheritance bool) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_has_method")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3860701026)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&method)}
    args[2] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_get_method_list(class StringName, no_inheritance bool) Array {
    mut object_out := Array{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_get_method_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3504980660)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_get_integer_constant_list(class StringName, no_inheritance bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_get_integer_constant_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3031669221)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_has_integer_constant(class StringName, name StringName) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_has_integer_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_get_integer_constant(class StringName, name StringName) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_get_integer_constant")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2419549490)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_has_enum(class StringName, name StringName, no_inheritance bool) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_has_enum")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3860701026)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_get_enum_list(class StringName, no_inheritance bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_get_enum_list")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3031669221)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_get_enum_constants(class StringName, gdenum StringName, no_inheritance bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_get_enum_constants")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 661528303)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&gdenum)}
    args[2] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) class_get_integer_constant_enum(class StringName, name StringName, no_inheritance bool) StringName {
    mut object_out := StringName{}
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("class_get_integer_constant_enum")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2457504236)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    args[1] = unsafe{voidptr(&name)}
    args[2] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ClassDB) is_class_enabled(class StringName) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    defer { classname.deinit() }
    fnname := StringName.new("is_class_enabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&class)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
