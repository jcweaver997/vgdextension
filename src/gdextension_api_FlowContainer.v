module vgdextension

pub enum FlowContainerAlignmentMode {
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
    defer { classname.deinit() }
    fnname := StringName.new("get_line_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FlowContainer) set_alignment(alignment FlowContainerAlignmentMode) {
    classname := StringName.new("FlowContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 575250951)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&alignment)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FlowContainer) get_alignment() FlowContainerAlignmentMode {
    mut object_out := FlowContainerAlignmentMode.alignment_begin
    classname := StringName.new("FlowContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_alignment")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3749743559)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FlowContainer) set_vertical(vertical bool) {
    classname := StringName.new("FlowContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertical)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &FlowContainer) is_vertical() bool {
    mut object_out := false
    classname := StringName.new("FlowContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
