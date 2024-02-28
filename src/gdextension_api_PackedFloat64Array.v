module vgdextension

@[packed]
pub struct PackedFloat64Array {
        godot_data [16]u8 // filler
}

pub fn PackedFloat64Array.new0 () PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat64array, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn PackedFloat64Array.new1 (from &PackedFloat64Array) PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat64array, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn PackedFloat64Array.new2 (from &Array) PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedfloat64array, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &PackedFloat64Array) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedfloat64array)
    destructor(voidptr(c))
}

pub fn (r &PackedFloat64Array) size() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("size")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) set(index i64, value f64) {
    fnname := StringName.new("set")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 1113000516)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
    fnname.deinit()
}
pub fn (r &PackedFloat64Array) push_back(value f64) bool {
    mut object_out := false
    fnname := StringName.new("push_back")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 4094791666)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) append(value f64) bool {
    mut object_out := false
    fnname := StringName.new("append")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 4094791666)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) append_array(array PackedFloat64Array) {
    fnname := StringName.new("append_array")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 792078629)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (r &PackedFloat64Array) remove_at(index i64) {
    fnname := StringName.new("remove_at")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (r &PackedFloat64Array) insert(at_index i64, value f64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("insert")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 1379903876)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&at_index)
    args[1] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) fill(value f64) {
    fnname := StringName.new("fill")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 833936903)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (r &PackedFloat64Array) resize(new_size i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("resize")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 848867239)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&new_size)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) clear() {
    fnname := StringName.new("clear")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &PackedFloat64Array) has(value f64) bool {
    mut object_out := false
    fnname := StringName.new("has")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 1296369134)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) reverse() {
    fnname := StringName.new("reverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &PackedFloat64Array) slice(begin i64, end i64) PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    fnname := StringName.new("slice")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 2192974324)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&begin)
    args[1] = voidptr(&end)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) to_byte_array() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_byte_array")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) sort() {
    fnname := StringName.new("sort")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &PackedFloat64Array) bsearch(value f64, before bool) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("bsearch")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 1188816338)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) duplicate() PackedFloat64Array {
    mut object_out := PackedFloat64Array{}
    fnname := StringName.new("duplicate")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 949266573)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) find(value f64, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("find")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 1343150241)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) rfind(value f64, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("rfind")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 1343150241)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedFloat64Array) count(value f64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("count")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedfloat64array, voidptr(&fnname), 2859915090)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (v &PackedFloat64Array) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedfloat64array)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t PackedFloat64Array) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_packedfloat64array)
    var_to_type(voidptr(&t), var)
}

pub fn (v &PackedFloat64Array) index(i i64) f64 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedfloat64array)
    mut output := f64(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

pub fn (a PackedFloat64Array) in_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedfloat64array, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedFloat64Array) in_array(b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedfloat64array, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedFloat64Array) == (b PackedFloat64Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedfloat64array, GDExtensionVariantType.type_packedfloat64array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedFloat64Array) eq_packedfloat64array(b PackedFloat64Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedfloat64array, GDExtensionVariantType.type_packedfloat64array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedFloat64Array) ne_packedfloat64array(b PackedFloat64Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_packedfloat64array, GDExtensionVariantType.type_packedfloat64array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedFloat64Array) + (b PackedFloat64Array) PackedFloat64Array {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedfloat64array, GDExtensionVariantType.type_packedfloat64array)
     res := PackedFloat64Array{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedFloat64Array) add_packedfloat64array(b PackedFloat64Array) PackedFloat64Array {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedfloat64array, GDExtensionVariantType.type_packedfloat64array)
    res := PackedFloat64Array{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

