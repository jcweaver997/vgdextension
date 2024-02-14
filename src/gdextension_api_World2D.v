module vgdextension

@[noinit]
pub struct World2D {
    Resource
}

pub fn (r &World2D) get_canvas() RID {
    mut object_out := RID{}
    classname := StringName.new("World2D")
    fnname := StringName.new("get_canvas")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &World2D) get_space() RID {
    mut object_out := RID{}
    classname := StringName.new("World2D")
    fnname := StringName.new("get_space")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &World2D) get_navigation_map() RID {
    mut object_out := RID{}
    classname := StringName.new("World2D")
    fnname := StringName.new("get_navigation_map")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r World2D) get_direct_space_state() PhysicsDirectSpaceState2D {
    mut object_out := PhysicsDirectSpaceState2D{}
    classname := StringName.new("World2D")
    fnname := StringName.new("get_direct_space_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2506717822)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
