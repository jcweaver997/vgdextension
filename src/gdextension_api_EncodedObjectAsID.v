module vgdextension

pub type EncodedObjectAsID = voidptr

pub fn (mut r EncodedObjectAsID) set_object_id(id i32) {
    classname := StringName.new("EncodedObjectAsID")
    defer { classname.deinit() }
    fnname := StringName.new("set_object_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &EncodedObjectAsID) get_object_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("EncodedObjectAsID")
    defer { classname.deinit() }
    fnname := StringName.new("get_object_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
