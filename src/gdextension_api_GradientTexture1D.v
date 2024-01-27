module vgdextension

pub type GradientTexture1D = voidptr

pub fn (mut r GradientTexture1D) set_gradient(gradient Gradient) {
    classname := StringName.new("GradientTexture1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_gradient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2756054477)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GradientTexture1D) get_gradient() Gradient {
    mut object_out := Gradient(unsafe{nil})
    classname := StringName.new("GradientTexture1D")
    defer { classname.deinit() }
    fnname := StringName.new("get_gradient")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 132272999)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r GradientTexture1D) set_width(width i32) {
    classname := StringName.new("GradientTexture1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r GradientTexture1D) set_use_hdr(enabled bool) {
    classname := StringName.new("GradientTexture1D")
    defer { classname.deinit() }
    fnname := StringName.new("set_use_hdr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &GradientTexture1D) is_using_hdr() bool {
    mut object_out := false
    classname := StringName.new("GradientTexture1D")
    defer { classname.deinit() }
    fnname := StringName.new("is_using_hdr")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
