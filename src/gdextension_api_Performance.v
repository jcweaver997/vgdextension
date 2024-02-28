module vgdextension

pub enum PerformanceMonitor as i64 {
    time_fps = 0
    time_process = 1
    time_physics_process = 2
    time_navigation_process = 3
    memory_static = 4
    memory_static_max = 5
    memory_message_buffer_max = 6
    object_count = 7
    object_resource_count = 8
    object_node_count = 9
    object_orphan_node_count = 10
    render_total_objects_in_frame = 11
    render_total_primitives_in_frame = 12
    render_total_draw_calls_in_frame = 13
    render_video_mem_used = 14
    render_texture_mem_used = 15
    render_buffer_mem_used = 16
    physics_2d_active_objects = 17
    physics_2d_collision_pairs = 18
    physics_2d_island_count = 19
    physics_3d_active_objects = 20
    physics_3d_collision_pairs = 21
    physics_3d_island_count = 22
    audio_output_latency = 23
    navigation_active_maps = 24
    navigation_region_count = 25
    navigation_agent_count = 26
    navigation_link_count = 27
    navigation_polygon_count = 28
    navigation_edge_count = 29
    navigation_edge_merge_count = 30
    navigation_edge_connection_count = 31
    navigation_edge_free_count = 32
    monitor_max = 33
}

@[noinit]
pub struct Performance {
    Object
}

pub fn Performance.get_singleton() Performance {
    sn := StringName.new("Performance")
    o := Performance{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &Performance) get_monitor(monitor PerformanceMonitor) f64 {
    mut object_out := f64(0)
    classname := StringName.new("Performance")
    fnname := StringName.new("get_monitor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1943275655)
    mut args := unsafe { [1]voidptr{} }
    i64_monitor := i64(monitor)
    args[0] = unsafe{voidptr(&i64_monitor)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Performance) add_custom_monitor(id string, callable Callable, arguments Array) {
    classname := StringName.new("Performance")
    fnname := StringName.new("add_custom_monitor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4099036814)
    mut args := unsafe { [3]voidptr{} }
    arg_sn0 := StringName.new(id)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&callable)}
    args[2] = unsafe{voidptr(&arguments)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Performance) remove_custom_monitor(id string) {
    classname := StringName.new("Performance")
    fnname := StringName.new("remove_custom_monitor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3304788590)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(id)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Performance) has_custom_monitor(id string) bool {
    mut object_out := false
    classname := StringName.new("Performance")
    fnname := StringName.new("has_custom_monitor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2041966384)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(id)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Performance) get_custom_monitor(id string) Variant {
    mut object_out := Variant{}
    classname := StringName.new("Performance")
    fnname := StringName.new("get_custom_monitor")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2138907829)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := StringName.new(id)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Performance) get_monitor_modification_time() u64 {
    mut object_out := u64(0)
    classname := StringName.new("Performance")
    fnname := StringName.new("get_monitor_modification_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Performance) get_custom_monitor_names() Array {
    mut object_out := Array{}
    classname := StringName.new("Performance")
    fnname := StringName.new("get_custom_monitor_names")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2915620761)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
