module vgdextension

@[noinit]
pub struct CurveXYZTexture {
    Texture2D
}

pub fn (r &CurveXYZTexture) set_width(width i32) {
    classname := StringName.new("CurveXYZTexture")
    fnname := StringName.new("set_width")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&width)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CurveXYZTexture) set_curve_x(curve Curve) {
    classname := StringName.new("CurveXYZTexture")
    fnname := StringName.new("set_curve_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&curve.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CurveXYZTexture) get_curve_x() Curve {
    mut object_out := Curve{}
    classname := StringName.new("CurveXYZTexture")
    fnname := StringName.new("get_curve_x")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CurveXYZTexture) set_curve_y(curve Curve) {
    classname := StringName.new("CurveXYZTexture")
    fnname := StringName.new("set_curve_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&curve.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CurveXYZTexture) get_curve_y() Curve {
    mut object_out := Curve{}
    classname := StringName.new("CurveXYZTexture")
    fnname := StringName.new("get_curve_y")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &CurveXYZTexture) set_curve_z(curve Curve) {
    classname := StringName.new("CurveXYZTexture")
    fnname := StringName.new("set_curve_z")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&curve.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &CurveXYZTexture) get_curve_z() Curve {
    mut object_out := Curve{}
    classname := StringName.new("CurveXYZTexture")
    fnname := StringName.new("get_curve_z")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
