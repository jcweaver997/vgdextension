module vgdextension

pub enum PackedSceneGenEditState {
    gen_edit_state_disabled = 0
    gen_edit_state_instance = 1
    gen_edit_state_main = 2
    gen_edit_state_main_inherited = 3
}

pub struct PackedScene {
    Resource
}

pub fn (mut r PackedScene) pack(path Node) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("PackedScene")
    defer { classname.deinit() }
    fnname := StringName.new("pack")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2584678054)
    mut args := unsafe { [1]voidptr{} }
    args[0] = path.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PackedScene) instantiate(edit_state PackedSceneGenEditState) Node {
    mut object_out := Node{}
    classname := StringName.new("PackedScene")
    defer { classname.deinit() }
    fnname := StringName.new("instantiate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2628778455)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&edit_state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &PackedScene) can_instantiate() bool {
    mut object_out := false
    classname := StringName.new("PackedScene")
    defer { classname.deinit() }
    fnname := StringName.new("can_instantiate")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &PackedScene) get_state() SceneState {
    mut object_out := SceneState{}
    classname := StringName.new("PackedScene")
    defer { classname.deinit() }
    fnname := StringName.new("get_state")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3479783971)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
