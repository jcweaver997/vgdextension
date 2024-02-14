module vgdextension

pub enum AspectRatioContainerStretchMode as i64 {
    stretch_width_controls_height = 0
    stretch_height_controls_width = 1
    stretch_fit = 2
    stretch_cover = 3
}

pub enum AspectRatioContainerAlignmentMode as i64 {
    alignment_begin = 0
    alignment_center = 1
    alignment_end = 2
}

@[noinit]
pub struct AspectRatioContainer {
    Container
}

pub fn (mut r AspectRatioContainer) set_ratio(ratio f64) {
    classname := StringName.new("AspectRatioContainer")
    fnname := StringName.new("set_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&ratio)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AspectRatioContainer) get_ratio() f64 {
    mut object_out := f64(0)
    classname := StringName.new("AspectRatioContainer")
    fnname := StringName.new("get_ratio")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r AspectRatioContainer) set_stretch_mode(stretch_mode AspectRatioContainerStretchMode) {
    classname := StringName.new("AspectRatioContainer")
    fnname := StringName.new("set_stretch_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1876743467)
    mut args := unsafe { [1]voidptr{} }
    i64_stretch_mode := i64(stretch_mode)
    args[0] = unsafe{voidptr(&i64_stretch_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AspectRatioContainer) get_stretch_mode() AspectRatioContainerStretchMode {
    mut object_out := i64(AspectRatioContainerStretchMode.stretch_width_controls_height)
    classname := StringName.new("AspectRatioContainer")
    fnname := StringName.new("get_stretch_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3416449033)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AspectRatioContainerStretchMode(object_out)}
}
pub fn (mut r AspectRatioContainer) set_alignment_horizontal(alignment_horizontal AspectRatioContainerAlignmentMode) {
    classname := StringName.new("AspectRatioContainer")
    fnname := StringName.new("set_alignment_horizontal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2147829016)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment_horizontal := i64(alignment_horizontal)
    args[0] = unsafe{voidptr(&i64_alignment_horizontal)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AspectRatioContainer) get_alignment_horizontal() AspectRatioContainerAlignmentMode {
    mut object_out := i64(AspectRatioContainerAlignmentMode.alignment_begin)
    classname := StringName.new("AspectRatioContainer")
    fnname := StringName.new("get_alignment_horizontal")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3838875429)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AspectRatioContainerAlignmentMode(object_out)}
}
pub fn (mut r AspectRatioContainer) set_alignment_vertical(alignment_vertical AspectRatioContainerAlignmentMode) {
    classname := StringName.new("AspectRatioContainer")
    fnname := StringName.new("set_alignment_vertical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2147829016)
    mut args := unsafe { [1]voidptr{} }
    i64_alignment_vertical := i64(alignment_vertical)
    args[0] = unsafe{voidptr(&i64_alignment_vertical)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &AspectRatioContainer) get_alignment_vertical() AspectRatioContainerAlignmentMode {
    mut object_out := i64(AspectRatioContainerAlignmentMode.alignment_begin)
    classname := StringName.new("AspectRatioContainer")
    fnname := StringName.new("get_alignment_vertical")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3838875429)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{AspectRatioContainerAlignmentMode(object_out)}
}
