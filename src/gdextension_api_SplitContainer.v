module vgdextension

pub enum SplitContainerDraggerVisibility {
    dragger_visible = 0
    dragger_hidden = 1
    dragger_hidden_collapsed = 2
}

@[noinit]
pub struct SplitContainer {
    Container
}

pub fn (mut r SplitContainer) set_split_offset(offset i32) {
    classname := StringName.new("SplitContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_split_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SplitContainer) get_split_offset() i32 {
    mut object_out := i32(0)
    classname := StringName.new("SplitContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_split_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SplitContainer) clamp_split_offset() {
    classname := StringName.new("SplitContainer")
    defer { classname.deinit() }
    fnname := StringName.new("clamp_split_offset")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
}
pub fn (mut r SplitContainer) set_collapsed(collapsed bool) {
    classname := StringName.new("SplitContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_collapsed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&collapsed)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SplitContainer) is_collapsed() bool {
    mut object_out := false
    classname := StringName.new("SplitContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_collapsed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SplitContainer) set_dragger_visibility(mode SplitContainerDraggerVisibility) {
    classname := StringName.new("SplitContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_dragger_visibility")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1168273952)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SplitContainer) get_dragger_visibility() SplitContainerDraggerVisibility {
    mut object_out := SplitContainerDraggerVisibility.dragger_visible
    classname := StringName.new("SplitContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_dragger_visibility")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 967297479)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r SplitContainer) set_vertical(vertical bool) {
    classname := StringName.new("SplitContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&vertical)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &SplitContainer) is_vertical() bool {
    mut object_out := false
    classname := StringName.new("SplitContainer")
    defer { classname.deinit() }
    fnname := StringName.new("is_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
