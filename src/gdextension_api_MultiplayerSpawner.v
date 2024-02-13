module vgdextension

@[noinit]
pub struct MultiplayerSpawner {
    Node
}

pub fn (mut r MultiplayerSpawner) add_spawnable_scene(path String) {
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("add_spawnable_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MultiplayerSpawner) get_spawnable_scene_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("get_spawnable_scene_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerSpawner) get_spawnable_scene(index i32) String {
    mut object_out := String{}
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("get_spawnable_scene")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSpawner) clear_spawnable_scenes() {
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("clear_spawnable_scenes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r MultiplayerSpawner) gdspawn(data Variant) Node {
    mut object_out := Node{}
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("spawn")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1991184589)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&data)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &MultiplayerSpawner) get_spawn_path() NodePath {
    mut object_out := NodePath{}
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("get_spawn_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4075236667)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSpawner) set_spawn_path(path NodePath) {
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("set_spawn_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1348162250)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MultiplayerSpawner) get_spawn_limit() u32 {
    mut object_out := u32(0)
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("get_spawn_limit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSpawner) set_spawn_limit(limit u32) {
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("set_spawn_limit")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&limit)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &MultiplayerSpawner) get_spawn_function() Callable {
    mut object_out := Callable{}
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("get_spawn_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1307783378)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r MultiplayerSpawner) set_spawn_function(spawn_function Callable) {
    classname := StringName.new("MultiplayerSpawner")
    defer { classname.deinit() }
    fnname := StringName.new("set_spawn_function")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1611583062)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&spawn_function)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
