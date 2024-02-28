module vgdextension

pub enum PackedSceneGenEditState as i64 {
    gen_edit_state_disabled = 0
    gen_edit_state_instance = 1
    gen_edit_state_main = 2
    gen_edit_state_main_inherited = 3
}

@[noinit]
pub struct PackedScene {
    Resource
}

pub fn (r &PackedScene) pack(path Node) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("PackedScene")
    fnname := StringName.new("pack")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2584678054)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&path.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &PackedScene) instantiate(edit_state PackedSceneGenEditState) Node {
    mut object_out := Node{}
    classname := StringName.new("PackedScene")
    fnname := StringName.new("instantiate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2628778455)
    mut args := unsafe { [1]voidptr{} }
    i64_edit_state := i64(edit_state)
    args[0] = unsafe{voidptr(&i64_edit_state)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PackedScene) can_instantiate() bool {
    mut object_out := false
    classname := StringName.new("PackedScene")
    fnname := StringName.new("can_instantiate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &PackedScene) get_state() SceneState {
    mut object_out := SceneState{}
    classname := StringName.new("PackedScene")
    fnname := StringName.new("get_state")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3479783971)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
