pub type CollisionShape3D = voidptr

pub fn (mut r CollisionShape3D) resource_changed(resource Resource) {
    classname := StringName.new("CollisionShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("resource_changed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 968641751)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r CollisionShape3D) set_shape(shape Shape3D) {
    classname := StringName.new("CollisionShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1549710052)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionShape3D) get_shape() Shape3D {
    mut object_out := Shape3D(unsafe{nil})
    classname := StringName.new("CollisionShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("get_shape")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3214262478)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionShape3D) set_disabled(enable bool) {
    classname := StringName.new("CollisionShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("set_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &CollisionShape3D) is_disabled() bool {
    mut object_out := false
    classname := StringName.new("CollisionShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("is_disabled")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r CollisionShape3D) make_convex_from_siblings() {
    classname := StringName.new("CollisionShape3D")
    defer { classname.deinit() }
    fnname := StringName.new("make_convex_from_siblings")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
