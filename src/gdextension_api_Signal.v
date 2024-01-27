@[heap]
pub struct Signal {
        godot_data [16]u8 // filler
}

pub fn Signal.new0 () Signal {
    mut object_out := Signal{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_signal, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Signal.new1 (from &Signal) Signal {
    mut object_out := Signal{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_signal, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Signal.new2 (object &Object, signal &StringName) Signal {
    mut object_out := Signal{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_signal, 2)
    mut args := unsafe { [2]voidptr{} }
    args[0] = object
    args[1] = signal
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &Signal) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_signal)
    destructor(voidptr(c))
}

pub fn (r &Signal) is_null() bool {
    mut object_out := false
    fnname := StringName.new("is_null")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Signal) get_object() Object {
    mut object_out := unsafe{nil}
    fnname := StringName.new("get_object")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname), 4008621732)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Signal) get_object_id() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("get_object_id")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Signal) get_name() StringName {
    mut object_out := StringName{}
    fnname := StringName.new("get_name")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname), 1825232092)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r Signal) connect(callable Callable, flags i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("connect")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname), 979702392)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&callable)
    args[1] = voidptr(&flags)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r Signal) disconnect(callable Callable) {
    fnname := StringName.new("disconnect")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname), 3470848906)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (r &Signal) is_connected(callable Callable) bool {
    mut object_out := false
    fnname := StringName.new("is_connected")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname), 4129521963)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&callable)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Signal) get_connections() Array {
    mut object_out := Array{}
    fnname := StringName.new("get_connections")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname), 4144163970)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Signal) emit() {
    fnname := StringName.new("emit")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_signal, voidptr(&fnname), 3286317445)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (v &Signal) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_signal)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

