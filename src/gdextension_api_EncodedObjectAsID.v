module vgdextension

@[noinit]
pub struct EncodedObjectAsID {
    RefCounted
}

pub fn (mut r EncodedObjectAsID) set_object_id(id u64) {
    classname := StringName.new("EncodedObjectAsID")
    fnname := StringName.new("set_object_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &EncodedObjectAsID) get_object_id() u64 {
    mut object_out := u64(0)
    classname := StringName.new("EncodedObjectAsID")
    fnname := StringName.new("get_object_id")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
