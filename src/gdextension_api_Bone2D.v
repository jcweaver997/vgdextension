module vgdextension

pub type Bone2D = voidptr

pub fn (mut r Bone2D) set_rest(rest Transform2D) {
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_rest")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2761652528)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Bone2D) get_rest() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_rest")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Bone2D) apply_rest() {
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("apply_rest")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Bone2D) get_skeleton_rest() Transform2D {
    mut object_out := Transform2D{}
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_skeleton_rest")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3814499831)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Bone2D) get_index_in_skeleton() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_index_in_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Bone2D) set_autocalculate_length_and_angle(auto_calculate bool) {
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_autocalculate_length_and_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Bone2D) get_autocalculate_length_and_angle() bool {
    mut object_out := false
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_autocalculate_length_and_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Bone2D) set_length(length f32) {
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Bone2D) get_length() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Bone2D) set_bone_angle(angle f32) {
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("set_bone_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Bone2D) get_bone_angle() f32 {
    mut object_out := f32(0)
    classname := StringName.new("Bone2D")
    defer { classname.deinit() }
    fnname := StringName.new("get_bone_angle")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
