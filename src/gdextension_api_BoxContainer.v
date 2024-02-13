module vgdextension

pub enum BoxContainerAlignmentMode {
    alignment_begin = 0
    alignment_center = 1
    alignment_end = 2
}

@[noinit]
pub struct BoxContainer {
    Container
}

pub fn (mut r BoxContainer) add_spacer(begin bool) Control {
    mut object_out := Control{}
    classname := StringName.new("BoxContainer")
    defer { classname.deinit() }
    fnname := StringName.new("add_spacer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1326660695)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&begin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r BoxContainer) set_alignment(alignment BoxContainerAlignmentMode) {
    classname := StringName.new("BoxContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2456745134)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BoxContainer) get_alignment() BoxContainerAlignmentMode {
    mut object_out := BoxContainerAlignmentMode.alignment_begin
    classname := StringName.new("BoxContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1915476527)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r BoxContainer) set_vertical(vertical bool) {
    classname := StringName.new("BoxContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertical)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &BoxContainer) is_vertical() bool {
    mut object_out := false
    classname := StringName.new("BoxContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
