module vgdextension

@[heap; packed]
pub struct Array {
        godot_data [8]u8 // filler
}

pub fn Array.new0 () Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Array.new1 (from &Array) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Array.new2 (base &Array, type_name &i64, class_name &StringName, script &Variant) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 2)
    mut args := unsafe { [4]voidptr{} }
    args[0] = base
    args[1] = type_name
    args[2] = class_name
    args[3] = script
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Array.new3 (from &PackedByteArray) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 3)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Array.new4 (from &PackedInt32Array) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 4)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Array.new5 (from &PackedInt64Array) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 5)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Array.new6 (from &PackedFloat32Array) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 6)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Array.new7 (from &PackedFloat64Array) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 7)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Array.new8 (from &PackedStringArray) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 8)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Array.new9 (from &PackedVector2Array) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 9)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Array.new10 (from &PackedVector3Array) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 10)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Array.new11 (from &PackedColorArray) Array {
    mut object_out := Array{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_array, 11)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (c &Array) deinit () {
    destructor := gdf.variant_get_ptr_destructor(GDExtensionVariantType.type_array)
    destructor(voidptr(c))
}

pub fn (r &Array) size() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("size")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r Array) clear() {
    fnname := StringName.new("clear")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &Array) hash() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("hash")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r Array) assign(array Array) {
    fnname := StringName.new("assign")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2307260970)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r Array) push_back(value Variant) {
    fnname := StringName.new("push_back")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r Array) push_front(value Variant) {
    fnname := StringName.new("push_front")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r Array) append(value Variant) {
    fnname := StringName.new("append")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r Array) append_array(array Array) {
    fnname := StringName.new("append_array")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2307260970)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r Array) resize(size i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("resize")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 848867239)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&size)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r Array) insert(position i64, value Variant) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("insert")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3176316662)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&position)
    args[1] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (mut r Array) remove_at(position i64) {
    fnname := StringName.new("remove_at")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r Array) fill(value Variant) {
    fnname := StringName.new("fill")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r Array) erase(value Variant) {
    fnname := StringName.new("erase")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (r &Array) front() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("front")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) back() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("back")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) pick_random() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("pick_random")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) find(what Variant, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("find")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2336346817)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) rfind(what Variant, from i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("rfind")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2336346817)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) count(value Variant) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("count")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1481661226)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) has(value Variant) bool {
    mut object_out := false
    fnname := StringName.new("has")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3680194679)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r Array) pop_back() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("pop_back")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1321915136)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r Array) pop_front() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("pop_front")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1321915136)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r Array) pop_at(position i64) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("pop_at")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3518259424)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&position)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (mut r Array) sort() {
    fnname := StringName.new("sort")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (mut r Array) sort_custom(func Callable) {
    fnname := StringName.new("sort_custom")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3470848906)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
    fnname.deinit()
}
pub fn (mut r Array) shuffle() {
    fnname := StringName.new("shuffle")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &Array) bsearch(value Variant, before bool) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("bsearch")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3372222236)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) bsearch_custom(value Variant, func Callable, before bool) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("bsearch_custom")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 161317131)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&func)
    args[2] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
    fnname.deinit()
   return object_out
}
pub fn (mut r Array) reverse() {
    fnname := StringName.new("reverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &Array) duplicate(deep bool) Array {
    mut object_out := Array{}
    fnname := StringName.new("duplicate")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 636440122)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&deep)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) slice(begin i64, end i64, step i64, deep bool) Array {
    mut object_out := Array{}
    fnname := StringName.new("slice")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1393718243)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&begin)
    args[1] = voidptr(&end)
    args[2] = voidptr(&step)
    args[3] = voidptr(&deep)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) filter(method Callable) Array {
    mut object_out := Array{}
    fnname := StringName.new("filter")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4075186556)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&method)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) mape(method Callable) Array {
    mut object_out := Array{}
    fnname := StringName.new("mape")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4075186556)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&method)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) reduce(method Callable, accum Variant) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("reduce")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4272450342)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&method)
    args[1] = voidptr(&accum)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) any(method Callable) bool {
    mut object_out := false
    fnname := StringName.new("any")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4129521963)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&method)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) all(method Callable) bool {
    mut object_out := false
    fnname := StringName.new("all")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4129521963)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&method)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) max() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("max")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) min() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("min")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) is_typed() bool {
    mut object_out := false
    fnname := StringName.new("is_typed")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) is_same_typed(array Array) bool {
    mut object_out := false
    fnname := StringName.new("is_same_typed")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2988181878)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&array)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) get_typed_builtin() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("get_typed_builtin")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) get_typed_class_name() StringName {
    mut object_out := StringName{}
    fnname := StringName.new("get_typed_class_name")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1825232092)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Array) get_typed_script() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("get_typed_script")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (mut r Array) make_read_only() {
    fnname := StringName.new("make_read_only")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
    fnname.deinit()
}
pub fn (r &Array) is_read_only() bool {
    mut object_out := false
    fnname := StringName.new("is_read_only")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (v &Array) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_array)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Array) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_array)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Array) index(i i64) Variant {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_array)
    mut output := Variant{}
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

pub fn (a Array) == (b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Array) < (b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_less, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Array) + (b Array) Array {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_add, GDExtensionVariantType.type_array, GDExtensionVariantType.type_array)
     res := Array{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

