module vgdextension

pub enum FlowContainerAlignmentMode as i64 {
    alignment_begin = 0
    alignment_center = 1
    alignment_end = 2
}

@[noinit]
pub struct FlowContainer {
    Container
}

pub fn (r &FlowContainer) get_line_count() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FlowContainer")
    fnname := StringName.new("get_line_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FlowContainer) set_alignment(alignment FlowContainerAlignmentMode) {
    classname := StringName.new("FlowContainer")
    fnname := StringName.new("set_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 575250951)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment := i64(alignment)
    args[0] = unsafe{voidptr(&i64_alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FlowContainer) get_alignment() FlowContainerAlignmentMode {
    mut object_out := i64(FlowContainerAlignmentMode.alignment_begin)
    classname := StringName.new("FlowContainer")
    fnname := StringName.new("get_alignment")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3749743559)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{FlowContainerAlignmentMode(object_out)}
}
pub fn (mut r FlowContainer) set_vertical(vertical bool) {
    classname := StringName.new("FlowContainer")
    fnname := StringName.new("set_vertical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertical)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FlowContainer) is_vertical() bool {
    mut object_out := false
    classname := StringName.new("FlowContainer")
    fnname := StringName.new("is_vertical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
