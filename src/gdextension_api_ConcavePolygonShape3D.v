module vgdextension

@[noinit]
pub struct ConcavePolygonShape3D {
    Shape3D
}

pub fn (r &ConcavePolygonShape3D) set_faces(faces PackedVector3Array) {
    classname := StringName.new("ConcavePolygonShape3D")
    fnname := StringName.new("set_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 334873810)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&faces)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ConcavePolygonShape3D) get_faces() PackedVector3Array {
    mut object_out := PackedVector3Array{}
    classname := StringName.new("ConcavePolygonShape3D")
    fnname := StringName.new("get_faces")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 497664490)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ConcavePolygonShape3D) set_backface_collision_enabled(enabled bool) {
    classname := StringName.new("ConcavePolygonShape3D")
    fnname := StringName.new("set_backface_collision_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enabled)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ConcavePolygonShape3D) is_backface_collision_enabled() bool {
    mut object_out := false
    classname := StringName.new("ConcavePolygonShape3D")
    fnname := StringName.new("is_backface_collision_enabled")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
