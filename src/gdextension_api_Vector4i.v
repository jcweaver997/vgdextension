module vgdextension

pub enum Vector4iAxis as i64 {
    axis_x = 0
    axis_y = 1
    axis_z = 2
    axis_w = 3
}

@[heap; packed]
pub struct Vector4i {
    pub mut:
        x i32 // offset 0
        y i32 // offset 4
        z i32 // offset 8
        w i32 // offset 12
}

pub fn Vector4i.new0 () Vector4i {
    mut object_out := Vector4i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4i, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Vector4i.new1 (from &Vector4i) Vector4i {
    mut object_out := Vector4i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4i, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector4i.new2 (from &Vector4) Vector4i {
    mut object_out := Vector4i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4i, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Vector4i.new3 (x &i64, y &i64, z &i64, w &i64) Vector4i {
    mut object_out := Vector4i{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_vector4i, 3)
    mut args := unsafe { [4]voidptr{} }
    args[0] = x
    args[1] = y
    args[2] = z
    args[3] = w
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &Vector4i) min_axis_index() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("min_axis_index")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector4i) max_axis_index() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("max_axis_index")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector4i) length() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("length")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector4i) length_squared() i64 {
    mut object_out := i64(0)
    fnname := StringName.new("length_squared")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector4i) sign() Vector4i {
    mut object_out := Vector4i{}
    fnname := StringName.new("sign")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname), 4134919947)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector4i) abs() Vector4i {
    mut object_out := Vector4i{}
    fnname := StringName.new("abs")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname), 4134919947)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector4i) clamp(min Vector4i, max Vector4i) Vector4i {
    mut object_out := Vector4i{}
    fnname := StringName.new("clamp")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname), 3046490913)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&min)
    args[1] = voidptr(&max)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Vector4i) snapped(step Vector4i) Vector4i {
    mut object_out := Vector4i{}
    fnname := StringName.new("snapped")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_vector4i, voidptr(&fnname), 1181693102)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&step)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (v &Vector4i) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_vector4i)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Vector4i) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_vector4i)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Vector4i) index(i i64) i64 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_vector4i)
    mut output := i64(0)
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

