module vgdextension

pub enum ProjectionPlanes as i64 {
    plane_near = 0
    plane_far = 1
    plane_left = 2
    plane_top = 3
    plane_right = 4
    plane_bottom = 5
}

@[packed]
pub struct Projection {
    pub mut:
        x Vector4 // offset 0
        y Vector4 // offset 16
        z Vector4 // offset 32
        w Vector4 // offset 48
}

pub fn Projection.new0 () Projection {
    mut object_out := Projection{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_projection, 0)
    constructor(voidptr(&object_out), unsafe {nil})
    return object_out
}

pub fn Projection.new1 (from &Projection) Projection {
    mut object_out := Projection{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_projection, 1)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Projection.new2 (from &Transform3D) Projection {
    mut object_out := Projection{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_projection, 2)
    mut args := unsafe { [1]voidptr{} }
    args[0] = from
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Projection.new3 (x_axis &Vector4, y_axis &Vector4, z_axis &Vector4, w_axis &Vector4) Projection {
    mut object_out := Projection{}
    constructor := gdf.variant_get_ptr_constructor(GDExtensionVariantType.type_projection, 3)
    mut args := unsafe { [4]voidptr{} }
    args[0] = x_axis
    args[1] = y_axis
    args[2] = z_axis
    args[3] = w_axis
    constructor(voidptr(&object_out), voidptr(&args[0]))
    return object_out
}

pub fn Projection.create_depth_correction(flip_y bool) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("create_depth_correction")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 1228516048)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&flip_y)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn Projection.create_light_atlas_rect(rect Rect2) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("create_light_atlas_rect")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 2654950662)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&rect)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn Projection.create_perspective(fovy f64, aspect f64, z_near f64, z_far f64, flip_fov bool) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("create_perspective")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 390915442)
    mut args := unsafe { [5]voidptr{} }
    args[0] = voidptr(&fovy)
    args[1] = voidptr(&aspect)
    args[2] = voidptr(&z_near)
    args[3] = voidptr(&z_far)
    args[4] = voidptr(&flip_fov)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 5)
    fnname.deinit()
   return object_out
}
pub fn Projection.create_perspective_hmd(fovy f64, aspect f64, z_near f64, z_far f64, flip_fov bool, eye i64, intraocular_dist f64, convergence_dist f64) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("create_perspective_hmd")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 2857674800)
    mut args := unsafe { [8]voidptr{} }
    args[0] = voidptr(&fovy)
    args[1] = voidptr(&aspect)
    args[2] = voidptr(&z_near)
    args[3] = voidptr(&z_far)
    args[4] = voidptr(&flip_fov)
    args[5] = voidptr(&eye)
    args[6] = voidptr(&intraocular_dist)
    args[7] = voidptr(&convergence_dist)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 8)
    fnname.deinit()
   return object_out
}
pub fn Projection.create_for_hmd(eye i64, aspect f64, intraocular_dist f64, display_width f64, display_to_lens f64, oversample f64, z_near f64, z_far f64) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("create_for_hmd")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 4184144994)
    mut args := unsafe { [8]voidptr{} }
    args[0] = voidptr(&eye)
    args[1] = voidptr(&aspect)
    args[2] = voidptr(&intraocular_dist)
    args[3] = voidptr(&display_width)
    args[4] = voidptr(&display_to_lens)
    args[5] = voidptr(&oversample)
    args[6] = voidptr(&z_near)
    args[7] = voidptr(&z_far)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 8)
    fnname.deinit()
   return object_out
}
pub fn Projection.create_orthogonal(left f64, right f64, bottom f64, top f64, z_near f64, z_far f64) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("create_orthogonal")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 3707929169)
    mut args := unsafe { [6]voidptr{} }
    args[0] = voidptr(&left)
    args[1] = voidptr(&right)
    args[2] = voidptr(&bottom)
    args[3] = voidptr(&top)
    args[4] = voidptr(&z_near)
    args[5] = voidptr(&z_far)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 6)
    fnname.deinit()
   return object_out
}
pub fn Projection.create_orthogonal_aspect(size f64, aspect f64, z_near f64, z_far f64, flip_fov bool) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("create_orthogonal_aspect")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 390915442)
    mut args := unsafe { [5]voidptr{} }
    args[0] = voidptr(&size)
    args[1] = voidptr(&aspect)
    args[2] = voidptr(&z_near)
    args[3] = voidptr(&z_far)
    args[4] = voidptr(&flip_fov)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 5)
    fnname.deinit()
   return object_out
}
pub fn Projection.create_frustum(left f64, right f64, bottom f64, top f64, z_near f64, z_far f64) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("create_frustum")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 3707929169)
    mut args := unsafe { [6]voidptr{} }
    args[0] = voidptr(&left)
    args[1] = voidptr(&right)
    args[2] = voidptr(&bottom)
    args[3] = voidptr(&top)
    args[4] = voidptr(&z_near)
    args[5] = voidptr(&z_far)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 6)
    fnname.deinit()
   return object_out
}
pub fn Projection.create_frustum_aspect(size f64, aspect f64, offset Vector2, z_near f64, z_far f64, flip_fov bool) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("create_frustum_aspect")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 1535076251)
    mut args := unsafe { [6]voidptr{} }
    args[0] = voidptr(&size)
    args[1] = voidptr(&aspect)
    args[2] = voidptr(&offset)
    args[3] = voidptr(&z_near)
    args[4] = voidptr(&z_far)
    args[5] = voidptr(&flip_fov)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 6)
    fnname.deinit()
   return object_out
}
pub fn Projection.create_fit_aabb(aabb AABB) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("create_fit_aabb")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 2264694907)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&aabb)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) determinant() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("determinant")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) perspective_znear_adjusted(new_znear f64) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("perspective_znear_adjusted")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 3584785443)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&new_znear)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) get_projection_plane(plane i64) Plane {
    mut object_out := Plane{}
    fnname := StringName.new("get_projection_plane")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 1551184160)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&plane)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) flipped_y() Projection {
    mut object_out := Projection{}
    fnname := StringName.new("flipped_y")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 4212530932)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) jitter_offseted(offset Vector2) Projection {
    mut object_out := Projection{}
    fnname := StringName.new("jitter_offseted")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 2448438599)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&offset)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn Projection.get_fovy(fovx f64, aspect f64) f64 {
    mut object_out := f64(0)
    fnname := StringName.new("get_fovy")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 3514207532)
    mut args := unsafe { [2]voidptr{} }
    args[0] = voidptr(&fovx)
    args[1] = voidptr(&aspect)
    f(unsafe{nil}, voidptr(&args[0]), voidptr(&object_out), 2)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) get_z_far() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("get_z_far")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) get_z_near() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("get_z_near")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) get_aspect() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("get_aspect")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) get_fov() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("get_fov")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) is_orthogonal() bool {
    mut object_out := false
    fnname := StringName.new("is_orthogonal")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 3918633141)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) get_viewport_half_extents() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("get_viewport_half_extents")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) get_far_plane_half_extents() Vector2 {
    mut object_out := Vector2{}
    fnname := StringName.new("get_far_plane_half_extents")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 2428350749)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) inverse() Projection {
    mut object_out := Projection{}
    fnname := StringName.new("inverse")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 4212530932)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) get_pixels_per_meter(for_pixel_width i64) i64 {
    mut object_out := i64(0)
    fnname := StringName.new("get_pixels_per_meter")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 4103005248)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&for_pixel_width)
    f(voidptr(r), voidptr(&args[0]), voidptr(&object_out), 1)
    fnname.deinit()
   return object_out
}
pub fn (r &Projection) get_lod_multiplier() f64 {
    mut object_out := f64(0)
    fnname := StringName.new("get_lod_multiplier")
    f := gdf.variant_get_ptr_builtin_method(GDExtensionVariantType.type_projection, voidptr(&fnname), 466405837)
    f(voidptr(r), unsafe{nil}, voidptr(&object_out), 0)
    fnname.deinit()
   return object_out
}
pub fn (v &Projection) to_var() Variant {
    to_variant := gdf.get_variant_from_type_constructor(GDExtensionVariantType.type_projection)
    output := Variant{}
    to_variant(GDExtensionUninitializedVariantPtr(&output), GDExtensionTypePtr(v))
    return output
}

pub fn (mut t Projection) set_from_var(var &Variant) {
    var_to_type := gdf.get_variant_to_type_constructor(GDExtensionVariantType.type_projection)
    var_to_type(voidptr(&t), var)
}

pub fn (v &Projection) index(i i64) Vector4 {
    index_fn := gdf.variant_get_ptr_indexed_getter(GDExtensionVariantType.type_projection)
    mut output := Vector4{}
    index_fn(GDExtensionConstTypePtr(v), GDExtensionInt(i), GDExtensionTypePtr(&output))
    return output}

pub fn (a Projection) mul_vector4(b Vector4) Vector4 {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_projection, GDExtensionVariantType.type_vector4)
    res := Vector4{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Projection) == (b Projection) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_projection, GDExtensionVariantType.type_projection)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Projection) eq_projection(b Projection) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_equal, GDExtensionVariantType.type_projection, GDExtensionVariantType.type_projection)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Projection) ne_projection(b Projection) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_not_equal, GDExtensionVariantType.type_projection, GDExtensionVariantType.type_projection)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Projection) * (b Projection) Projection {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_projection, GDExtensionVariantType.type_projection)
     res := Projection{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Projection) mul_projection(b Projection) Projection {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_multiply, GDExtensionVariantType.type_projection, GDExtensionVariantType.type_projection)
    res := Projection{}
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Projection) in_dictionary(b Dictionary) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_projection, GDExtensionVariantType.type_dictionary)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

pub fn (a Projection) in_array(b Array) bool {
     e := gdf.variant_get_ptr_operator_evaluator(GDExtensionVariantOperator.op_in, GDExtensionVariantType.type_projection, GDExtensionVariantType.type_array)
     res := false
     e(voidptr(&a), voidptr(&b), voidptr(&res))
     return res
}

