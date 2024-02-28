module vgdextension

pub enum BoxContainerAlignmentMode as i64 {
    alignment_begin = 0
    alignment_center = 1
    alignment_end = 2
}

@[noinit]
pub struct BoxContainer {
    Container
}

pub fn (r &BoxContainer) add_spacer(begin bool) Control {
    mut object_out := Control{}
    classname := StringName.new("BoxContainer")
    fnname := StringName.new("add_spacer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1326660695)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&begin)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &BoxContainer) set_alignment(alignment BoxContainerAlignmentMode) {
    classname := StringName.new("BoxContainer")
    fnname := StringName.new("set_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2456745134)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BoxContainer) get_alignment() BoxContainerAlignmentMode {
    mut object_out := i64(BoxContainerAlignmentMode.alignment_begin)
    classname := StringName.new("BoxContainer")
    fnname := StringName.new("get_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1915476527)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{BoxContainerAlignmentMode(object_out)}
}
pub fn (r &BoxContainer) set_vertical(vertical bool) {
    classname := StringName.new("BoxContainer")
    fnname := StringName.new("set_vertical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertical)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &BoxContainer) is_vertical() bool {
    mut object_out := false
    classname := StringName.new("BoxContainer")
    fnname := StringName.new("is_vertical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
