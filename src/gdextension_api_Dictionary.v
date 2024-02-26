module vgdextension

@[packed]
pub struct Dictionary {
        godot_data [8]u8 // filler
}

pub fn Dictionary.new0 () Dictionary {
    mut object_out := Dictionary{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_dictionary, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Dictionary.new1 (from &Dictionary) Dictionary {
    mut object_out := Dictionary{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_dictionary, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &Dictionary) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_dictionary)
    destructor(voidptr(c))
}

pub fn (r &Dictionary) size() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("size")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Dictionary) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r Dictionary) clear() {
    fnname := StringName.new("clear")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (mut r Dictionary) merge(dictionary Dictionary, overwrite bool) {
    fnname := StringName.new("merge")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 2079548978)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
    fnname.deinit()
}
pub fn (r &Dictionary) has(key Variant) bool {
    mut object_out := false
    fnname := StringName.new("has")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3680194679)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&key)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Dictionary) has_all(keys Array) bool {
    mut object_out := false
    fnname := StringName.new("has_all")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 2988181878)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&keys)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Dictionary) find_key(value Variant) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("find_key")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 1988825835)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r Dictionary) erase(key Variant) bool {
    mut object_out := false
    fnname := StringName.new("erase")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 1776646889)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&key)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Dictionary) hash() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("hash")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Dictionary) keys() Array {
    mut object_out := Array{}
    fnname := StringName.new("keys")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 4144163970)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Dictionary) values() Array {
    mut object_out := Array{}
    fnname := StringName.new("values")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 4144163970)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Dictionary) duplicate(deep bool) Dictionary {
    mut object_out := Dictionary{}
    fnname := StringName.new("duplicate")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 830099069)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&deep)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Dictionary) get(key Variant, default Variant) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("get")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 2205440559)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&key)
    args[1] = voidptr(&default)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (mut r Dictionary) make_read_only() {
    fnname := StringName.new("make_read_only")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &Dictionary) is_read_only() bool {
    mut object_out := false
    fnname := StringName.new("is_read_only")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_dictionary, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (v &Dictionary) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_dictionary)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Dictionary) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_dictionary)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Dictionary) index_get(i &Variant) ?Variant {
    as_var := v.to_var()
    ret := Variant{}
    suc := GDExtensionBool(false)
    gdf.variant_get(&as_var, i, voidptr(&ret), &suc)
    if suc != GDExtensionBool(true) {
    	return none
    }
    return ret
}

pub fn (v &Dictionary) index_get_named(sn &StringName) ?Variant {
    as_var := v.to_var()
    ret := Variant{}
    suc := GDExtensionBool(false)
    gdf.variant_get_named(&as_var, sn, voidptr(&ret), &suc)
    if suc != GDExtensionBool(true) {
    	return none
    }
    return ret
}

pub fn (v &Dictionary) index_get_keyed(i &Variant) ?Variant {
    as_var := v.to_var()
    ret := Variant{}
    suc := GDExtensionBool(false)
    gdf.variant_get_keyed(&as_var, i, voidptr(&ret), &suc)
    if suc != GDExtensionBool(true) {
    	return none
    }
    return ret
}

pub fn (v &Dictionary) index_set(key &Variant, value &Variant) ! {
    as_var := v.to_var()
    suc := GDExtensionBool(false)
    gdf.variant_set(&as_var, key, value, &suc)
    if suc != GDExtensionBool(true) {
    	return error("invalid set on Dictionary")
    }
}

pub fn (v &Dictionary) index_set_named(key &StringName, value &Variant) ! {
    as_var := v.to_var()
    suc := GDExtensionBool(false)
    gdf.variant_set_named(&as_var, key, value, &suc)
    if suc != GDExtensionBool(true) {
    	return error("invalid set_named on Dictionary")
    }
}

pub fn (v &Dictionary) index_set_keyed(key &Variant, value &Variant) ! {
    as_var := v.to_var()
    suc := GDExtensionBool(false)
    gdf.variant_set_keyed(&as_var, key, value, &suc)
    if suc != GDExtensionBool(true) {
    	return error("invalid set_keyed on Dictionary")
    }
}

pub fn (a Dictionary) == (b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_dictionary, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Dictionary) eq_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_dictionary, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Dictionary) ne_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_dictionary, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Dictionary) in_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_dictionary, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Dictionary) in_array(b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_dictionary, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

