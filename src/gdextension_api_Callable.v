module vgdextension

@[heap]
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
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 413578926)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&arguments)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Callable) is_null() bool {
    mut object_out := false
    fnname := StringName.new("is_null")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Callable) is_custom() bool {
    mut object_out := false
    fnname := StringName.new("is_custom")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Callable) is_standard() bool {
    mut object_out := false
    fnname := StringName.new("is_standard")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Callable) is_valid() bool {
    mut object_out := false
    fnname := StringName.new("is_valid")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Callable) get_object() Object {
    mut object_out := unsafe{nil}
    fnname := StringName.new("get_object")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 4008621732)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Callable) get_object_id() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("get_object_id")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Callable) get_method() StringName {
    mut object_out := StringName{}
    fnname := StringName.new("get_method")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 1825232092)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Callable) get_bound_arguments_count() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("get_bound_arguments_count")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Callable) get_bound_arguments() Array {
    mut object_out := Array{}
    fnname := StringName.new("get_bound_arguments")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 4144163970)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Callable) hash() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("hash")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r Callable) bindv(arguments Array) Callable {
    mut object_out := Callable{}
    fnname := StringName.new("bindv")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3564560322)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&arguments)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Callable) unbind(argcount i32) Callable {
    mut object_out := Callable{}
    fnname := StringName.new("unbind")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 755001590)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&argcount)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Callable) call() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("call")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3643564216)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Callable) call_deferred() {
    fnname := StringName.new("call_deferred")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3286317445)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &Callable) rpc() {
    fnname := StringName.new("rpc")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3286317445)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &Callable) rpc_id(peer_id i32) {
    fnname := StringName.new("rpc_id")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 2270047679)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (r &Callable) bind() Callable {
    mut object_out := Callable{}
    fnname := StringName.new("bind")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_callable, voidptr(&fnname), 3224143119)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (v &Callable) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_callable)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

