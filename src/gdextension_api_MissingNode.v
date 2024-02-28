module vgdextension

@[noinit]
pub struct MissingNode {
    Node
}

pub fn (r &MissingNode) set_original_class(name string) {
    classname := StringName.new("MissingNode")
    fnname := StringName.new("set_original_class")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MissingNode) get_original_class() string {
    mut object_out := String{}
    classname := StringName.new("MissingNode")
    fnname := StringName.new("get_original_class")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &MissingNode) set_recording_properties(enable bool) {
    classname := StringName.new("MissingNode")
    fnname := StringName.new("set_recording_properties")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&enable)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &MissingNode) is_recording_properties() bool {
    mut object_out := false
    classname := StringName.new("MissingNode")
    fnname := StringName.new("is_recording_properties")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
