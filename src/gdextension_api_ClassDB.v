module vgdextension

@[noinit]
pub struct ClassDB {
    Object
}

pub fn ClassDB.get_singleton() ClassDB {
    sn := StringName.new("ClassDB")
    o := ClassDB{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &ClassDB) get_class_list() PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("get_class_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1139954409)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) get_inheriters_from_class(class string) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("get_inheriters_from_class")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1761182771)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) get_parent_class(class string) string {
    mut object_out := StringName{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("get_parent_class")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965194235)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &ClassDB) class_exists(class string) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_exists")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) is_parent_class(class string, inherits string) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    fnname := StringName.new("is_parent_class")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(inherits)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) can_instantiate(class string) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    fnname := StringName.new("can_instantiate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) instantiate(class string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("instantiate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2760726917)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_has_signal(class string, signal string) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_has_signal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(signal)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_get_signal(class string, signal string) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_get_signal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3061114238)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(signal)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_get_signal_list(class string, no_inheritance bool) Array {
    mut object_out := Array{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_get_signal_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3504980660)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_get_property_list(class string, no_inheritance bool) Array {
    mut object_out := Array{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_get_property_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3504980660)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_get_property(object Object, property string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_get_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2498641674)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object.ptr
    arg_sn1 := StringName.new(property)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_set_property(object Object, property string, value Variant) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_set_property")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1690314931)
    mut args := unsafe { [3]voidptr{} }
    args[0] = object.ptr
    arg_sn1 := StringName.new(property)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &ClassDB) class_has_method(class string, method string, no_inheritance bool) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_has_method")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3860701026)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(method)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_get_method_list(class string, no_inheritance bool) Array {
    mut object_out := Array{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_get_method_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3504980660)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_get_integer_constant_list(class string, no_inheritance bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_get_integer_constant_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3031669221)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_has_integer_constant(class string, name string) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_has_integer_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 471820014)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_get_integer_constant(class string, name string) i64 {
    mut object_out := i64(0)
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_get_integer_constant")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2419549490)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_has_enum(class string, name string, no_inheritance bool) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_has_enum")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3860701026)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_get_enum_list(class string, no_inheritance bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_get_enum_list")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3031669221)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_get_enum_constants(class string, gdenum string, no_inheritance bool) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_get_enum_constants")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 661528303)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(gdenum)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ClassDB) class_get_integer_constant_enum(class string, name string, no_inheritance bool) string {
    mut object_out := StringName{}
    classname := StringName.new("ClassDB")
    fnname := StringName.new("class_get_integer_constant_enum")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2457504236)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    args[2] = unsafe{voidptr(&no_inheritance)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &ClassDB) is_class_enabled(class string) bool {
    mut object_out := false
    classname := StringName.new("ClassDB")
    fnname := StringName.new("is_class_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2619796661)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(class)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
