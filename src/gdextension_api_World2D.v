module vgdextension

pub type World2D = voidptr

pub fn (r &World2D) get_canvas() RID {
    mut object_out := RID{}
    classname := StringName.new("World2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_canvas")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &World2D) get_space() RID {
    mut object_out := RID{}
    classname := StringName.new("World2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_space")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &World2D) get_navigation_map() RID {
    mut object_out := RID{}
    classname := StringName.new("World2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_navigation_map")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r World2D) get_direct_space_state() PhysicsDirectSpaceState2D {
    mut object_out := PhysicsDirectSpaceState2D(unsafe{nil})
    classname := StringName.new("World2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_direct_space_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2506717822)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
