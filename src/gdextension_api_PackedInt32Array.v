module vgdextension

@[packed]
pub struct PackedInt32Array {
        godot_data [16]u8 // filler
}

pub fn PackedInt32Array.new0 () PackedInt32Array {
    mut object_out := PackedInt32Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint32array, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn PackedInt32Array.new1 (from &PackedInt32Array) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint32array, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn PackedInt32Array.new2 (from &Array) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedint32array, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &PackedInt32Array) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedint32array)
    destructor(voidptr(c))
}

pub fn (r &PackedInt32Array) size() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("size")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedInt32Array) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedInt32Array) set(index i64, value i64) {
    fnname := StringName.new("set")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3638975848)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
    fnname.deinit()
}
pub fn (mut r PackedInt32Array) push_back(value i64) bool {
    mut object_out := false
    fnname := StringName.new("push_back")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 694024632)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedInt32Array) append(value i64) bool {
    mut object_out := false
    fnname := StringName.new("append")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 694024632)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedInt32Array) append_array(array PackedInt32Array) {
    fnname := StringName.new("append_array")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 1087733270)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r PackedInt32Array) remove_at(index i64) {
    fnname := StringName.new("remove_at")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r PackedInt32Array) insert(at_index i64, value i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("insert")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 1487112728)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&at_index)
    args[1] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedInt32Array) fill(value i64) {
    fnname := StringName.new("fill")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r PackedInt32Array) resize(new_size i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("resize")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 848867239)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&new_size)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedInt32Array) clear() {
    fnname := StringName.new("clear")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &PackedInt32Array) has(value i64) bool {
    mut object_out := false
    fnname := StringName.new("has")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 931488181)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedInt32Array) reverse() {
    fnname := StringName.new("reverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &PackedInt32Array) slice(begin i64, end i64) PackedInt32Array {
    mut object_out := PackedInt32Array{}
    fnname := StringName.new("slice")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 1216021098)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&begin)
    args[1] = voidptr(&end)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedInt32Array) to_byte_array() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_byte_array")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedInt32Array) sort() {
    fnname := StringName.new("sort")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (mut r PackedInt32Array) bsearch(value i64, before bool) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("bsearch")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 3380005890)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedInt32Array) duplicate() PackedInt32Array {
    mut object_out := PackedInt32Array{}
    fnname := StringName.new("duplicate")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 1997843129)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedInt32Array) find(value i64, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("find")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 2984303840)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedInt32Array) rfind(value i64, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("rfind")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 2984303840)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedInt32Array) count(value i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("count")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedint32array, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (v &PackedInt32Array) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedint32array)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t PackedInt32Array) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_packedint32array)
    var_to_type(voidptr(&t), var)
}

pub fn (v &PackedInt32Array) index(i i64) i64 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedint32array)
    mut output := i64(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

pub fn (a PackedInt32Array) in_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedint32array, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedInt32Array) in_array(b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedint32array, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedInt32Array) == (b PackedInt32Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedint32array, GDExtensionVariantType.type_packedint32array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedInt32Array) eq_packedint32array(b PackedInt32Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedint32array, GDExtensionVariantType.type_packedint32array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedInt32Array) ne_packedint32array(b PackedInt32Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_packedint32array, GDExtensionVariantType.type_packedint32array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedInt32Array) + (b PackedInt32Array) PackedInt32Array {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedint32array, GDExtensionVariantType.type_packedint32array)
     res := PackedInt32Array{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedInt32Array) add_packedint32array(b PackedInt32Array) PackedInt32Array {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedint32array, GDExtensionVariantType.type_packedint32array)
    res := PackedInt32Array{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

