module vgdextension

@[noinit]
pub struct VisualShaderNodeComment {
    VisualShaderNodeResizableBase
}

pub fn (mut r VisualShaderNodeComment) set_title(title string) {
    classname := StringName.new("VisualShaderNodeComment")
    fnname := StringName.new("set_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(title)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeComment) get_title() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeComment")
    fnname := StringName.new("get_title")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
pub fn (mut r VisualShaderNodeComment) set_description(description string) {
    classname := StringName.new("VisualShaderNodeComment")
    fnname := StringName.new("set_description")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    arg_sn0 := String.new(description)
    args[0] = unsafe{voidptr(&arg_sn0)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    arg_sn0.deinit()
    classname.deinit()
    fnname.deinit()
}
pub fn (r &VisualShaderNodeComment) get_description() string {
    mut object_out := String{}
    classname := StringName.new("VisualShaderNodeComment")
    fnname := StringName.new("get_description")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   object_out_v := object_out.to_v()
   object_out.deinit()
   return object_out_v
}
