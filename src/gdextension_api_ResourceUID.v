module vgdextension

pub type ResourceUID = voidptr

pub fn (r &ResourceUID) id_to_text(id i32) String {
    mut object_out := String{}
    classname := StringName.new("ResourceUID")
    defer { classname.deinit() }
    fnname := StringName.new("id_to_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceUID) text_to_id(text_id String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("ResourceUID")
    defer { classname.deinit() }
    fnname := StringName.new("text_to_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&text_id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceUID) create_id() i32 {
    mut object_out := i32(0)
    classname := StringName.new("ResourceUID")
    defer { classname.deinit() }
    fnname := StringName.new("create_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2455072627)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &ResourceUID) has_id(id i32) bool {
    mut object_out := false
    classname := StringName.new("ResourceUID")
    defer { classname.deinit() }
    fnname := StringName.new("has_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceUID) add_id(id i32, path String) {
    classname := StringName.new("ResourceUID")
    defer { classname.deinit() }
    fnname := StringName.new("add_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r ResourceUID) set_id(id i32, path String) {
    classname := StringName.new("ResourceUID")
    defer { classname.deinit() }
    fnname := StringName.new("set_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 501894301)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &ResourceUID) get_id_path(id i32) String {
    mut object_out := String{}
    classname := StringName.new("ResourceUID")
    defer { classname.deinit() }
    fnname := StringName.new("get_id_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&id)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r ResourceUID) remove_id(id i32) {
    classname := StringName.new("ResourceUID")
    defer { classname.deinit() }
    fnname := StringName.new("remove_id")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
