module vgdextension

@[noinit]
pub struct MultiplayerSpawner {
    Node
}

pub fn (r &MultiplayerSpawner) add_spawnable_scene(path string) {
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("add_spawnable_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(path)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerSpawner) get_spawnable_scene_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("get_spawnable_scene_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerSpawner) get_spawnable_scene(index i32) string {
    mut object_out := String{}
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("get_spawnable_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &MultiplayerSpawner) clear_spawnable_scenes() {
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("clear_spawnable_scenes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerSpawner) gdspawn(data Variant) Node {
    mut object_out := Node{}
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("spawn")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1991184589)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerSpawner) get_spawn_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("get_spawn_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerSpawner) set_spawn_path(path NodePath) {
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("set_spawn_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerSpawner) get_spawn_limit() u32 {
    mut object_out := u32(0)
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("get_spawn_limit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerSpawner) set_spawn_limit(limit u32) {
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("set_spawn_limit")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&limit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MultiplayerSpawner) get_spawn_function() Callable {
    mut object_out := Callable{}
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("get_spawn_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307783378)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &MultiplayerSpawner) set_spawn_function(spawn_function Callable) {
    classname := StringName.new("MultiplayerSpawner")
    fnname := StringName.new("set_spawn_function")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&spawn_function)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
