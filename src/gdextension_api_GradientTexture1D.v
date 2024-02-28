module vgdextension

@[noinit]
pub struct GradientTexture1D {
    Texture2D
}

pub fn (r &GradientTexture1D) set_gradient(gradient Gradient) {
    classname := StringName.new("GradientTexture1D")
    fnname := StringName.new("set_gradient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&gradient.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture1D) get_gradient() Gradient {
    mut object_out := Gradient{}
    classname := StringName.new("GradientTexture1D")
    fnname := StringName.new("get_gradient")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &GradientTexture1D) set_width(width i32) {
    classname := StringName.new("GradientTexture1D")
    fnname := StringName.new("set_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture1D) set_use_hdr(enabled bool) {
    classname := StringName.new("GradientTexture1D")
    fnname := StringName.new("set_use_hdr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &GradientTexture1D) is_using_hdr() bool {
    mut object_out := false
    classname := StringName.new("GradientTexture1D")
    fnname := StringName.new("is_using_hdr")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
