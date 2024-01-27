module vgdextension

pub type VisualShaderNodeResizableBase = voidptr

pub fn (mut r VisualShaderNodeResizableBase) set_size(size Vector2) {
    classname := StringName.new("VisualShaderNodeResizableBase")
    defer { classname.deinit() }
    fnname := StringName.new("set_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 743155724)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &VisualShaderNodeResizableBase) get_size() Vector2 {
    mut object_out := Vector2{}
    classname := StringName.new("VisualShaderNodeResizableBase")
    defer { classname.deinit() }
    fnname := StringName.new("get_size")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3341600327)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
