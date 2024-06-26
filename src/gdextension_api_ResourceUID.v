module vgdextension

@[noinit]
pub struct ResourceUID {
    Object
}

pub fn ResourceUID.get_singleton() ResourceUID {
    sn := StringName.new("ResourceUID")
    o := ResourceUID{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &ResourceUID) id_to_text(id i64) string {
    mut object_out := String{}
    classname := StringName.new("ResourceUID")
    fnname := StringName.new("id_to_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &ResourceUID) text_to_id(text_id string) i64 {
    mut object_out := i64(0)
    classname := StringName.new("ResourceUID")
    fnname := StringName.new("text_to_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(text_id)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourceUID) create_id() i64 {
    mut object_out := i64(0)
    classname := StringName.new("ResourceUID")
    fnname := StringName.new("create_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourceUID) has_id(id i64) bool {
    mut object_out := false
    classname := StringName.new("ResourceUID")
    fnname := StringName.new("has_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &ResourceUID) add_id(id i64, path string) {
    classname := StringName.new("ResourceUID")
    fnname := StringName.new("add_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    arg_sn1 := String.new(path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ResourceUID) set_id(id i64, path string) {
    classname := StringName.new("ResourceUID")
    fnname := StringName.new("set_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    arg_sn1 := String.new(path)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &ResourceUID) get_id_path(id i64) string {
    mut object_out := String{}
    classname := StringName.new("ResourceUID")
    fnname := StringName.new("get_id_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (r &ResourceUID) remove_id(id i64) {
    classname := StringName.new("ResourceUID")
    fnname := StringName.new("remove_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
