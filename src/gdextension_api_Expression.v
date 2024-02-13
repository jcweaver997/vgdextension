module vgdextension

@[noinit]
pub struct Expression {
    RefCounted
}

pub fn (mut r Expression) parse(expression String, input_names PackedStringArray) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("Expression")
    defer { classname.deinit() }
    fnname := StringName.new("parse")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3658149758)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&expression)}
    args[1] = unsafe{voidptr(&input_names)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Expression) execute(inputs Array, base_instance Object, show_error bool, const_calls_only bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Expression")
    defer { classname.deinit() }
    fnname := StringName.new("execute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3712471238)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&inputs)}
    args[1] = base_instance.ptr
    args[2] = unsafe{voidptr(&show_error)}
    args[3] = unsafe{voidptr(&const_calls_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Expression) has_execute_failed() bool {
    mut object_out := false
    classname := StringName.new("Expression")
    defer { classname.deinit() }
    fnname := StringName.new("has_execute_failed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Expression) get_error_text() String {
    mut object_out := String{}
    classname := StringName.new("Expression")
    defer { classname.deinit() }
    fnname := StringName.new("get_error_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
