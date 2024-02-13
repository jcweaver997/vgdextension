module vgdextension

@[noinit]
pub struct Skin {
    Resource
}

pub fn (mut r Skin) set_bind_count(bind_count i32) {
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("set_bind_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bind_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Skin) get_bind_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("get_bind_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Skin) add_bind(bone i32, pose Transform3D) {
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("add_bind")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone)}
    args[1] = unsafe{voidptr(&pose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Skin) add_named_bind(name String, pose Transform3D) {
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("add_named_bind")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3154712474)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&name)}
    args[1] = unsafe{voidptr(&pose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (mut r Skin) set_bind_pose(bind_index i32, pose Transform3D) {
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("set_bind_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    args[1] = unsafe{voidptr(&pose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Skin) get_bind_pose(bind_index i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("get_bind_pose")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Skin) set_bind_name(bind_index i32, name StringName) {
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("set_bind_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    args[1] = unsafe{voidptr(&name)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Skin) get_bind_name(bind_index i32) StringName {
    mut object_out := StringName{}
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("get_bind_name")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Skin) set_bind_bone(bind_index i32, bone i32) {
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("set_bind_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    args[1] = unsafe{voidptr(&bone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Skin) get_bind_bone(bind_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("get_bind_bone")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r Skin) clear_binds() {
    classname := StringName.new("Skin")
    defer { classname.deinit() }
    fnname := StringName.new("clear_binds")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
