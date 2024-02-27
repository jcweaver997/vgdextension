module vgdextension

@[noinit]
pub struct Skin {
    Resource
}

pub fn (mut r Skin) set_bind_count(bind_count i32) {
    classname := StringName.new("Skin")
    fnname := StringName.new("set_bind_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bind_count)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skin) get_bind_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Skin")
    fnname := StringName.new("get_bind_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Skin) add_bind(bone i32, pose Transform3D) {
    classname := StringName.new("Skin")
    fnname := StringName.new("add_bind")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bone)}
    args[1] = unsafe{voidptr(&pose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Skin) add_named_bind(name string, pose Transform3D) {
    classname := StringName.new("Skin")
    fnname := StringName.new("add_named_bind")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3154712474)
    mut args := unsafe { [2]voidptr{} }
    arg_sn0 := String.new(name)
    args[0] = unsafe{voidptr(&arg_sn0)}
    args[1] = unsafe{voidptr(&pose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r Skin) set_bind_pose(bind_index i32, pose Transform3D) {
    classname := StringName.new("Skin")
    fnname := StringName.new("set_bind_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3616898986)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    args[1] = unsafe{voidptr(&pose)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skin) get_bind_pose(bind_index i32) Transform3D {
    mut object_out := Transform3D{}
    classname := StringName.new("Skin")
    fnname := StringName.new("get_bind_pose")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1965739696)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Skin) set_bind_name(bind_index i32, name string) {
    classname := StringName.new("Skin")
    fnname := StringName.new("set_bind_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3780747571)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    arg_sn1 := StringName.new(name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn1.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skin) get_bind_name(bind_index i32) string {
    mut object_out := StringName{}
    classname := StringName.new("Skin")
    fnname := StringName.new("get_bind_name")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659327637)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r Skin) set_bind_bone(bind_index i32, bone i32) {
    classname := StringName.new("Skin")
    fnname := StringName.new("set_bind_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3937882851)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    args[1] = unsafe{voidptr(&bone)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Skin) get_bind_bone(bind_index i32) i32 {
    mut object_out := i32(0)
    classname := StringName.new("Skin")
    fnname := StringName.new("get_bind_bone")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&bind_index)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r Skin) clear_binds() {
    classname := StringName.new("Skin")
    fnname := StringName.new("clear_binds")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
