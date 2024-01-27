pub enum AspectRatioContainerStretchMode {
    stretch_width_controls_height = 0
    stretch_height_controls_width = 1
    stretch_fit = 2
    stretch_cover = 3
}

pub enum AspectRatioContainerAlignmentMode {
    alignment_begin = 0
    alignment_center = 1
    alignment_end = 2
}

pub type AspectRatioContainer = voidptr

pub fn (mut r AspectRatioContainer) set_ratio(ratio f32) {
    classname := StringName.new("AspectRatioContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AspectRatioContainer) get_ratio() f32 {
    mut object_out := f32(0)
    classname := StringName.new("AspectRatioContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_ratio")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AspectRatioContainer) set_stretch_mode(stretch_mode AspectRatioContainerStretchMode) {
    classname := StringName.new("AspectRatioContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_stretch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1876743467)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AspectRatioContainer) get_stretch_mode() AspectRatioContainerStretchMode {
    mut object_out := AspectRatioContainerStretchMode.stretch_width_controls_height
    classname := StringName.new("AspectRatioContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_stretch_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3416449033)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AspectRatioContainer) set_alignment_horizontal(alignment_horizontal AspectRatioContainerAlignmentMode) {
    classname := StringName.new("AspectRatioContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_alignment_horizontal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2147829016)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AspectRatioContainer) get_alignment_horizontal() AspectRatioContainerAlignmentMode {
    mut object_out := AspectRatioContainerAlignmentMode.alignment_begin
    classname := StringName.new("AspectRatioContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_alignment_horizontal")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3838875429)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r AspectRatioContainer) set_alignment_vertical(alignment_vertical AspectRatioContainerAlignmentMode) {
    classname := StringName.new("AspectRatioContainer")
    defer { classname.deinit() }
    fnname := StringName.new("set_alignment_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2147829016)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &AspectRatioContainer) get_alignment_vertical() AspectRatioContainerAlignmentMode {
    mut object_out := AspectRatioContainerAlignmentMode.alignment_begin
    classname := StringName.new("AspectRatioContainer")
    defer { classname.deinit() }
    fnname := StringName.new("get_alignment_vertical")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3838875429)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
