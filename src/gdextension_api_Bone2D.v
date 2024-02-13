module vgdextension

@[noinit]
pub struct Bone2D {
    Node2D
}

pub fn (mut r Bone2D) set_rest(rest Transform2D) {
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rest")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&rest)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Bone2D) get_rest() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rest")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Bone2D) apply_rest() {
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_rest")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (r &Bone2D) get_skeleton_rest() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skeleton_rest")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Bone2D) get_index_in_skeleton() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_index_in_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Bone2D) set_autocalculate_length_and_angle(auto_calculate bool) {
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_autocalculate_length_and_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&auto_calculate)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Bone2D) get_autocalculate_length_and_angle() bool {
    mut object_out := false
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_autocalculate_length_and_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Bone2D) set_length(length f64) {
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Bone2D) get_length() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Bone2D) set_bone_angle(angle f64) {
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&angle)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &Bone2D) get_bone_angle() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
