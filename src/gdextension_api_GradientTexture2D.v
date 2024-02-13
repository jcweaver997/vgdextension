module vgdextension

pub enum GradientTexture2DFill {
    fill_linear = 0
    fill_radial = 1
    fill_square = 2
}

pub enum GradientTexture2DRepeat {
    repeat_none = 0
    repeat = 1
    repeat_mirror = 2
}

@[noinit]
pub struct GradientTexture2D {
    Texture2D
}

pub fn (mut r GradientTexture2D) set_gradient(gradient Gradient) {
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gradient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = gradient.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GradientTexture2D) get_gradient() Gradient {
    mut object_out := Gradient{}
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gradient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GradientTexture2D) set_width(width i32) {
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GradientTexture2D) set_height(height i32) {
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_height")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r GradientTexture2D) set_use_hdr(enabled bool) {
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_hdr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GradientTexture2D) is_using_hdr() bool {
    mut object_out := false
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_hdr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GradientTexture2D) set_fill(fill GradientTexture2DFill) {
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fill")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3623927636)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fill)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GradientTexture2D) get_fill() GradientTexture2DFill {
    mut object_out := GradientTexture2DFill.fill_linear
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fill")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1876227217)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GradientTexture2D) set_fill_from(fill_from Vector2) {
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fill_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fill_from)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GradientTexture2D) get_fill_from() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fill_from")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GradientTexture2D) set_fill_to(fill_to Vector2) {
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_fill_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fill_to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GradientTexture2D) get_fill_to() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_fill_to")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GradientTexture2D) set_repeat(repeat GradientTexture2DRepeat) {
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1357597002)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&repeat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &GradientTexture2D) get_repeat() GradientTexture2DRepeat {
    mut object_out := GradientTexture2DRepeat.repeat_none
    classname := StringName.new("GradientTexture2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_repeat")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3351758665)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
