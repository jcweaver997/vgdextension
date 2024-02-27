module vgdextension

@[heap]
pub struct Variant {
        godot_data [24]u8 // filler
}

pub interface ToVariant {
	to_var() Variant
}

pub interface FromVariant {
	mut:
	set_from_var(var &Variant)
}

pub fn (v &Variant) deinit(){
	gdf.variant_destroy(v)
}

pub fn i64_to_var(i &i64) Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_i64)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(i))
    return output
}

pub fn f64_to_var(f &f64) Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_f64)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(f))
    return output
}

pub fn i64_from_var(var &Variant) i64 {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_i64)
	t := i64(0)
    var_to_type(voidptr(&t), var)
	return t
}

pub fn f64_from_var(var &Variant) f64 {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_f64)
	t := f64(0)
    var_to_type(voidptr(&t), var)
	return t
}

pub fn (o &Object) cast_to[T]() ?T {
    sn := StringName.new(T.name.split(".").last())
    class_tag := gdf.classdb_get_class_tag(sn)
    sn.deinit()
    t := T{
        ptr: gdf.object_cast_to(o.ptr, class_tag)
    }
    
    if t.ptr == unsafe{nil} {
        return none
    }else{
        return t
    }
}

pub fn (r &Node) get_node_v(path string) Node {
    np := NodePath.new(path)
    node := r.get_node(np)
    np.deinit()
    return node
}