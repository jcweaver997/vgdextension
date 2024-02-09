module vgdextension

pub struct Path2D {
    Node2D
}

pub fn (mut r Path2D) set_curve(curve Curve2D) {
    classname := StringName.new("Path2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659985499)
    mut args := unsafe { [1]voidptr{} }
    args[0] = curve.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Path2D) get_curve() Curve2D {
    mut object_out := Curve2D{}
    classname := StringName.new("Path2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_curve")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 660369445)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
