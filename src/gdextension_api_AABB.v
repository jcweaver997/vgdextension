@[heap]
pub struct AABB {
    pub mut:
        position Vector3 // offset 0
        size Vector3 // offset 12
}

pub fn AABB.new0 () AABB {
    mut object_out := AABB{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_aabb, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn AABB.new1 (from &AABB) AABB {
    mut object_out := AABB{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_aabb, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn AABB.new2 (position &Vector3, size &Vector3) AABB {
    mut object_out := AABB{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_aabb, 2)
    mut args := unsafe { [2]voidptr{} }
    args[0] = position
    args[1] = size
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn (r &AABB) abs() AABB {
    mut object_out := AABB{}
    fnname := StringName.new("abs")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 1576868580)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) get_center() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("get_center")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) get_volume() f32 {
    mut object_out := f32(0)
    fnname := StringName.new("get_volume")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) has_volume() bool {
    mut object_out := false
    fnname := StringName.new("has_volume")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) has_surface() bool {
    mut object_out := false
    fnname := StringName.new("has_surface")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) has_point(point Vector3) bool {
    mut object_out := false
    fnname := StringName.new("has_point")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 1749054343)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&point)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) is_equal_approx(aabb AABB) bool {
    mut object_out := false
    fnname := StringName.new("is_equal_approx")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 299946684)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&aabb)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) is_finite() bool {
    mut object_out := false
    fnname := StringName.new("is_finite")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) intersects(with AABB) bool {
    mut object_out := false
    fnname := StringName.new("intersects")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 299946684)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) encloses(with AABB) bool {
    mut object_out := false
    fnname := StringName.new("encloses")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 299946684)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) intersects_plane(plane Plane) bool {
    mut object_out := false
    fnname := StringName.new("intersects_plane")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 1150170233)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&plane)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) intersection(with AABB) AABB {
    mut object_out := AABB{}
    fnname := StringName.new("intersection")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 1271470306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) merge(with AABB) AABB {
    mut object_out := AABB{}
    fnname := StringName.new("merge")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 1271470306)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&with)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) expand(to_point Vector3) AABB {
    mut object_out := AABB{}
    fnname := StringName.new("expand")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 2851643018)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&to_point)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) grow(by f32) AABB {
    mut object_out := AABB{}
    fnname := StringName.new("grow")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 239217291)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&by)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) get_support(dir Vector3) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("get_support")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 2923479887)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&dir)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) get_longest_axis() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("get_longest_axis")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) get_longest_axis_index() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("get_longest_axis_index")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) get_longest_axis_size() f32 {
    mut object_out := f32(0)
    fnname := StringName.new("get_longest_axis_size")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) get_shortest_axis() Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("get_shortest_axis")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 1776574132)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) get_shortest_axis_index() i32 {
    mut object_out := i32(0)
    fnname := StringName.new("get_shortest_axis_index")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 3173160232)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) get_shortest_axis_size() f32 {
    mut object_out := f32(0)
    fnname := StringName.new("get_shortest_axis_size")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
   return object_out
}
pub fn (r &AABB) get_endpoint(idx i32) Vector3 {
    mut object_out := Vector3{}
    fnname := StringName.new("get_endpoint")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 1394941017)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&idx)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
   return object_out
}
pub fn (r &AABB) intersects_segment(from Vector3, to Vector3) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("intersects_segment")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 2048133369)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&from)
    args[1] = voidptr(&to)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (r &AABB) intersects_ray(from Vector3, dir Vector3) Variant {
    mut object_out := Variant{}
    fnname := StringName.new("intersects_ray")
    defer { fnname.deinit() }
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_aabb, voidptr(&fnname), 2048133369)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&from)
    args[1] = voidptr(&dir)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 2)
   return object_out
}
pub fn (v &AABB) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_aabb)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

