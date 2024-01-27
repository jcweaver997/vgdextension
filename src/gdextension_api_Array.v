module vgdextension

@[heap]
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

pub fn Array.new2 (base &Array, type_name &i32, class_name &StringName, script &Variant) Array {
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

pub fn (r &Array) size() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("size")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Array) is_empty() bool {
    mut object_out := false
    fnname := StringName.new("is_empty")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r Array) clear() {
    fnname := StringName.new("clear")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &Array) hash() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("hash")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r Array) assign(array Array) {
    fnname := StringName.new("assign")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2307260970)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r Array) push_back(value Variant) {
    fnname := StringName.new("push_back")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r Array) push_front(value Variant) {
    fnname := StringName.new("push_front")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r Array) append(value Variant) {
    fnname := StringName.new("append")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r Array) append_array(array Array) {
    fnname := StringName.new("append_array")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2307260970)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r Array) resize(size i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("resize")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 848867239)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&size)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r Array) insert(position i32, value Variant) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("insert")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3176316662)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&position)
    args[1] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (mut r Array) remove_at(position i32) {
    fnname := StringName.new("remove_at")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2823966027)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r Array) fill(value Variant) {
    fnname := StringName.new("fill")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r Array) erase(value Variant) {
    fnname := StringName.new("erase")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3316032543)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (r &Array) front() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("front")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Array) back() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("back")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Array) pick_random() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("pick_random")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Array) find(what Variant, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("find")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2336346817)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Array) rfind(what Variant, from i32) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("rfind")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2336346817)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&what)
    args[1] = voidptr(&from)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Array) count(value Variant) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("count")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1481661226)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Array) has(value Variant) bool {
    mut object_out := false
    fnname := StringName.new("has")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3680194679)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&value)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r Array) pop_back() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("pop_back")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1321915136)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r Array) pop_front() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("pop_front")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1321915136)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r Array) pop_at(position i32) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("pop_at")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3518259424)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&position)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (mut r Array) sort() {
    fnname := StringName.new("sort")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (mut r Array) sort_custom(func Callable) {
    fnname := StringName.new("sort_custom")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3470848906)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 1)
}
pub fn (mut r Array) shuffle() {
    fnname := StringName.new("shuffle")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &Array) bsearch(value Variant, before bool) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("bsearch")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3372222236)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Array) bsearch_custom(value Variant, func Callable, before bool) i32 {
    mut object_out := i32(0)
    fnname := StringName.new("bsearch_custom")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 161317131)
    mut args := unsafe { [3]voidptr{} }
    args[0] = voidptr(&value)
    args[1] = voidptr(&func)
    args[2] = voidptr(&before)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 3)
   return object_out
}
pub fn (mut r Array) reverse() {
    fnname := StringName.new("reverse")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &Array) duplicate(deep bool) Array {
    mut object_out := Array{}
    fnname := StringName.new("duplicate")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 636440122)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&deep)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Array) slice(begin i32, end i32, step i32, deep bool) Array {
    mut object_out := Array{}
    fnname := StringName.new("slice")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1393718243)
    mut args := unsafe { [4]voidptr{} }
    args[0] = voidptr(&begin)
    args[1] = voidptr(&end)
    args[2] = voidptr(&step)
    args[3] = voidptr(&deep)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 4)
   return object_out
}
pub fn (r &Array) filter(method Callable) Array {
    mut object_out := Array{}
    fnname := StringName.new("filter")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4075186556)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&method)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Array) mape(method Callable) Array {
    mut object_out := Array{}
    fnname := StringName.new("mape")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4075186556)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&method)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Array) reduce(method Callable, accum Variant) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("reduce")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4272450342)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&method)
    args[1] = voidptr(&accum)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &Array) any(method Callable) bool {
    mut object_out := false
    fnname := StringName.new("any")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4129521963)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&method)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Array) all(method Callable) bool {
    mut object_out := false
    fnname := StringName.new("all")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 4129521963)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&method)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Array) max() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("max")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Array) min() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("min")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Array) is_typed() bool {
    mut object_out := false
    fnname := StringName.new("is_typed")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Array) is_same_typed(array Array) bool {
    mut object_out := false
    fnname := StringName.new("is_same_typed")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 2988181878)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&array)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &Array) get_typed_builtin() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("get_typed_builtin")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Array) get_typed_class_name() StringName {
    mut object_out := StringName{}
    fnname := StringName.new("get_typed_class_name")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1825232092)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &Array) get_typed_script() Variant {
    mut object_out := Variant{}
    fnname := StringName.new("get_typed_script")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 1460142086)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (mut r Array) make_read_only() {
    fnname := StringName.new("make_read_only")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3218959716)
    f(voidptr(r), unsafe{nil}, unsafe{nil}, 0)
}
pub fn (r &Array) is_read_only() bool {
    mut object_out := false
    fnname := StringName.new("is_read_only")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_array, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (v &Array) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_array)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (v &Array) index(i int) Variant {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_array)
    mut output := Variant{}
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

