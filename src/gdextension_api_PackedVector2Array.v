module vgdextension

@[packed]
pub struct PackedVector2Array {
        godot_data [16]u8 // filler
}

pub fn PackedVector2Array.new0 () PackedVector2Array {
    mut object_out := PackedVector2Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector2array, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn PackedVector2Array.new1 (from &PackedVector2Array) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector2array, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn PackedVector2Array.new2 (from &Array) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_packedvector2array, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &PackedVector2Array) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_packedvector2array)
    destructor(voidptr(c))
}

pub fn (r &PackedVector2Array) size() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("size")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedVector2Array) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedVector2Array) set(index i64, value Vector2) {
    fnname := StringName.new("set")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 635767250)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 2)
    fnname.deinit()
}
pub fn (mut r PackedVector2Array) push_back(value Vector2) bool {
    mut object_out := false
    fnname := StringName.new("push_back")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 4188891560)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedVector2Array) append(value Vector2) bool {
    mut object_out := false
    fnname := StringName.new("append")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 4188891560)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedVector2Array) append_array(array PackedVector2Array) {
    fnname := StringName.new("append_array")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3887534835)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r PackedVector2Array) remove_at(index i64) {
    fnname := StringName.new("remove_at")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r PackedVector2Array) insert(at_index i64, value Vector2) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("insert")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 2225629369)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&at_index)
    args[1] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedVector2Array) fill(value Vector2) {
    fnname := StringName.new("fill")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3790411178)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r PackedVector2Array) resize(new_size i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("resize")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 848867239)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&new_size)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedVector2Array) clear() {
    fnname := StringName.new("clear")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &PackedVector2Array) has(value Vector2) bool {
    mut object_out := false
    fnname := StringName.new("has")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3190634762)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedVector2Array) reverse() {
    fnname := StringName.new("reverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &PackedVector2Array) slice(begin i64, end i64) PackedVector2Array {
    mut object_out := PackedVector2Array{}
    fnname := StringName.new("slice")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3864005350)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&begin)
    args[1] = voidptr(&end)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedVector2Array) to_byte_array() PackedByteArray {
    mut object_out := PackedByteArray{}
    fnname := StringName.new("to_byte_array")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 247621236)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedVector2Array) sort() {
    fnname := StringName.new("sort")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (mut r PackedVector2Array) bsearch(value Vector2, before bool) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("bsearch")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3778035805)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (mut r PackedVector2Array) duplicate() PackedVector2Array {
    mut object_out := PackedVector2Array{}
    fnname := StringName.new("duplicate")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 3763646812)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedVector2Array) find(value Vector2, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("find")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 1469606149)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedVector2Array) rfind(value Vector2, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("rfind")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 1469606149)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &PackedVector2Array) count(value Vector2) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("count")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_packedvector2array, voidptr(&fnname), 2798848307)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (v &PackedVector2Array) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_packedvector2array)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t PackedVector2Array) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_packedvector2array)
    var_to_type(voidptr(&t), var)
}

pub fn (v &PackedVector2Array) index(i i64) Vector2 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_packedvector2array)
    mut output := Vector2{}
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

pub fn (a PackedVector2Array) mul_transform2d(b Transform2D) PackedVector2Array {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_packedvector2array, GDExtensionVariantType.type_transform2d)
    res := PackedVector2Array{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedVector2Array) in_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedvector2array, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedVector2Array) in_array(b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_packedvector2array, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedVector2Array) == (b PackedVector2Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedvector2array, GDExtensionVariantType.type_packedvector2array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedVector2Array) eq_packedvector2array(b PackedVector2Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_packedvector2array, GDExtensionVariantType.type_packedvector2array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedVector2Array) ne_packedvector2array(b PackedVector2Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_packedvector2array, GDExtensionVariantType.type_packedvector2array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedVector2Array) + (b PackedVector2Array) PackedVector2Array {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedvector2array, GDExtensionVariantType.type_packedvector2array)
     res := PackedVector2Array{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a PackedVector2Array) add_packedvector2array(b PackedVector2Array) PackedVector2Array {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_packedvector2array, GDExtensionVariantType.type_packedvector2array)
    res := PackedVector2Array{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

