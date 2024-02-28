module vgdextension

@[noinit]
pub struct EditorScript {
    RefCounted
}

pub interface IEditorScriptRun {
    mut:
    virt_run()
}

pub fn (r &EditorScript) urun() {
    classname := StringName.new("EditorScript")
    fnname := StringName.new("_run")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorScript) add_root_node(node Node) {
    classname := StringName.new("EditorScript")
    fnname := StringName.new("add_root_node")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1078189570)
    mut args := unsafe { [1]voidptr{} }
    args[0] = voidptr(&node.ptr)
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EditorScript) get_scene() Node {
    mut object_out := Node{}
    classname := StringName.new("EditorScript")
    fnname := StringName.new("get_scene")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3160264692)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &EditorScript) get_editor_interface() EditorInterface {
    mut object_out := EditorInterface{}
    classname := StringName.new("EditorScript")
    fnname := StringName.new("get_editor_interface")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1976662476)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
