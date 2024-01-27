module vgdextension

pub type WorldBoundaryShape2D = voidptr

pub fn (mut r WorldBoundaryShape2D) set_normal(normal Vector2) {
    classname := StringName.new("WorldBoundaryShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WorldBoundaryShape2D) get_normal() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("WorldBoundaryShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_normal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r WorldBoundaryShape2D) set_distance(distance f32) {
    classname := StringName.new("WorldBoundaryShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &WorldBoundaryShape2D) get_distance() f32 {
    mut object_out := f32(0)
    classname := StringName.new("WorldBoundaryShape2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_distance")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
