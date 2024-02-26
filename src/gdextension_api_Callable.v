module vgdextension

@[packed]
pub struct Callable {
        godot_data [16]u8 // filler
}

pub fn Callable.new0 () Callable {
    mut object_out := Callable{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_callable, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Callable.new1 (from &Callable) Callable {
    mut object_out := Callable{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_callable, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Callable.new2 (object &Object, method &StringName) Callable {
    mut object_out := Callable{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_callable, 2)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object
    args[1] = method
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &Callable) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_callable)
    destructor(voidptr(c))
}

pub fn (r &Callable) callv(arguments Array) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("callv")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 413578926)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&arguments)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) is_null() bool {
    mut object_out := false
    fnname := StringName.new("is_null")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) is_custom() bool {
    mut object_out := false
    fnname := StringName.new("is_custom")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) is_standard() bool {
    mut object_out := false
    fnname := StringName.new("is_standard")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) is_valid() bool {
    mut object_out := false
    fnname := StringName.new("is_valid")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) get_object() Object {
    mut object_out := Object{}
    fnname := StringName.new("get_object")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 4008621732)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) get_object_id() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("get_object_id")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) get_method() StringName {
    mut object_out := StringName{}
    fnname := StringName.new("get_method")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 1825232092)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) get_bound_arguments_count() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("get_bound_arguments_count")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) get_bound_arguments() Array {
    mut object_out := Array{}
    fnname := StringName.new("get_bound_arguments")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 4144163970)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) hash() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("hash")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r Callable) bindv(arguments Array) Callable {
    mut object_out := Callable{}
    fnname := StringName.new("bindv")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3564560322)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&arguments)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) unbind(argcount i64) Callable {
    mut object_out := Callable{}
    fnname := StringName.new("unbind")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 755001590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&argcount)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) call() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("call")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3643564216)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Callable) call_deferred() {
    fnname := StringName.new("call_deferred")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3286317445)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &Callable) rpc() {
    fnname := StringName.new("rpc")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3286317445)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &Callable) rpc_id(peer_id i64) {
    fnname := StringName.new("rpc_id")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 2270047679)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (r &Callable) bind() Callable {
    mut object_out := Callable{}
    fnname := StringName.new("bind")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3224143119)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (v &Callable) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_callable)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Callable) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_callable)
    var_to_type(voidptr(&t), var)
}

pub fn (a Callable) == (b Callable) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_callable, GDExtensionVariantType.type_callable)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Callable) eq_callable(b Callable) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_callable, GDExtensionVariantType.type_callable)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Callable) ne_callable(b Callable) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_callable, GDExtensionVariantType.type_callable)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Callable) in_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_callable, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Callable) in_array(b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_callable, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

