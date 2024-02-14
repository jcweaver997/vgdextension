module vgdextension

@[noinit]
pub struct Expression {
    RefCounted
}

pub fn (mut r Expression) parse(expression String, input_names PackedStringArray) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("Expression")
    fnname := StringName.new("parse")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3069722906)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&expression)}
    args[1] = unsafe{voidptr(&input_names)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (mut r Expression) execute(inputs Array, base_instance Object, show_error bool, const_calls_only bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Expression")
    fnname := StringName.new("execute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3712471238)
    mut args := unsafe { [4]voidptr{} }
    args[0] = unsafe{voidptr(&inputs)}
    args[1] = base_instance.ptr
    args[2] = unsafe{voidptr(&show_error)}
    args[3] = unsafe{voidptr(&const_calls_only)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Expression) has_execute_failed() bool {
    mut object_out := false
    classname := StringName.new("Expression")
    fnname := StringName.new("has_execute_failed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Expression) get_error_text() String {
    mut object_out := String{}
    classname := StringName.new("Expression")
    fnname := StringName.new("get_error_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
