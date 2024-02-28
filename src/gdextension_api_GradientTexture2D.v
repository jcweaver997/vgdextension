module vgdextension

pub enum GradientTexture2DFill as i64 {
    fill_linear = 0
    fill_radial = 1
    fill_square = 2
}

pub enum GradientTexture2DRepeat as i64 {
    repeat_none = 0
    repeat = 1
    repeat_mirror = 2
}

@[noinit]
pub struct GradientTexture2D {
    Texture2D
}

pub fn (r &GradientTexture2D) set_gradient(gradient Gradient) {
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("set_gradient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&gradient.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture2D) get_gradient() Gradient {
    mut object_out := Gradient{}
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("get_gradient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GradientTexture2D) set_width(width i32) {
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("set_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture2D) set_height(height i32) {
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("set_height")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&height)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture2D) set_use_hdr(enabled bool) {
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("set_use_hdr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture2D) is_using_hdr() bool {
    mut object_out := false
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("is_using_hdr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GradientTexture2D) set_fill(fill GradientTexture2DFill) {
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("set_fill")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3623927636)
    mut args := unsafe { [1]voidptr{} }
    i64_fill := i64(fill)
    args[0] = unsafe{voidptr(&i64_fill)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture2D) get_fill() GradientTexture2DFill {
    mut object_out := i64(GradientTexture2DFill.fill_linear)
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("get_fill")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1876227217)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GradientTexture2DFill(object_out)}
}
pub fn (r &GradientTexture2D) set_fill_from(fill_from Vector2) {
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("set_fill_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fill_from)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture2D) get_fill_from() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("get_fill_from")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GradientTexture2D) set_fill_to(fill_to Vector2) {
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("set_fill_to")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&fill_to)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture2D) get_fill_to() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("get_fill_to")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GradientTexture2D) set_repeat(repeat GradientTexture2DRepeat) {
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("set_repeat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1357597002)
    mut args := unsafe { [1]voidptr{} }
    i64_repeat := i64(repeat)
    args[0] = unsafe{voidptr(&i64_repeat)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture2D) get_repeat() GradientTexture2DRepeat {
    mut object_out := i64(GradientTexture2DRepeat.repeat_none)
    classname := StringName.new("GradientTexture2D")
    fnname := StringName.new("get_repeat")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3351758665)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GradientTexture2DRepeat(object_out)}
}
