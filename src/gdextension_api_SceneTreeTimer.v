pub type SceneTreeTimer = voidptr

pub fn (mut r SceneTreeTimer) set_time_left(time f32) {
    classname := StringName.new("SceneTreeTimer")
    defer { classname.deinit() }
    fnname := StringName.new("set_time_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &SceneTreeTimer) get_time_left() f32 {
    mut object_out := f32(0)
    classname := StringName.new("SceneTreeTimer")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_left")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
