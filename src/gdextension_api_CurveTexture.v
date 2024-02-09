module vgdextension

pub enum CurveTextureTextureMode {
    texture_mode_rgb = 0
    texture_mode_red = 1
}

pub struct CurveTexture {
    Texture2D
}

pub fn (mut r CurveTexture) set_width(width i32) {
    classname := StringName.new("CurveTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r CurveTexture) set_curve(curve Curve) {
    classname := StringName.new("CurveTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CurveTexture) get_curve() Curve {
    mut object_out := Curve{}
    classname := StringName.new("CurveTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CurveTexture) set_texture_mode(texture_mode CurveTextureTextureMode) {
    classname := StringName.new("CurveTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_texture_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321955367)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &CurveTexture) get_texture_mode() CurveTextureTextureMode {
    mut object_out := CurveTextureTextureMode.texture_mode_rgb
    classname := StringName.new("CurveTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_texture_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 715756376)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
