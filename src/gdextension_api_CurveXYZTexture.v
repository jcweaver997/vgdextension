pub type CurveXYZTexture = voidptr

pub fn (mut r CurveXYZTexture) set_width(width i32) {
    classname := StringName.new("CurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_width")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CurveXYZTexture) set_curve_x(curve Curve) {
    classname := StringName.new("CurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_curve_x")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CurveXYZTexture) get_curve_x() Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("CurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_curve_x")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CurveXYZTexture) set_curve_y(curve Curve) {
    classname := StringName.new("CurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_curve_y")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CurveXYZTexture) get_curve_y() Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("CurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_curve_y")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CurveXYZTexture) set_curve_z(curve Curve) {
    classname := StringName.new("CurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("set_curve_z")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 270443179)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CurveXYZTexture) get_curve_z() Curve {
    mut object_out := Curve(unsafe{nil})
    classname := StringName.new("CurveXYZTexture")
    defer { classname.deinit() }
    fnname := StringName.new("get_curve_z")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2460114913)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
