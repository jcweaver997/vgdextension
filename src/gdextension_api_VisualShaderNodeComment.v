module vgdextension

pub struct VisualShaderNodeComment {
    VisualShaderNodeResizableBase
}

pub fn (mut r VisualShaderNodeComment) set_title(title String) {
    classname := StringName.new("VisualShaderNodeComment")
    defer { classname.deinit() }
    fnname := StringName.new("set_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&title)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeComment) get_title() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeComment")
    defer { classname.deinit() }
    fnname := StringName.new("get_title")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r VisualShaderNodeComment) set_description(description String) {
    classname := StringName.new("VisualShaderNodeComment")
    defer { classname.deinit() }
    fnname := StringName.new("set_description")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&description)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
pub fn (r &VisualShaderNodeComment) get_description() String {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeComment")
    defer { classname.deinit() }
    fnname := StringName.new("get_description")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
