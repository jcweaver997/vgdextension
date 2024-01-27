module vgdextension

pub type Material = voidptr

pub fn (r &Material) uget_shader_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("Material")
    defer { classname.deinit() }
    fnname := StringName.new("_get_shader_rid")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Material) uget_shader_mode() ShaderMode {
    mut object_out := ShaderMode.mode_spatial
    classname := StringName.new("Material")
    defer { classname.deinit() }
    fnname := StringName.new("_get_shader_mode")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Material) ucan_do_next_pass() bool {
    mut object_out := false
    classname := StringName.new("Material")
    defer { classname.deinit() }
    fnname := StringName.new("_can_do_next_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Material) ucan_use_render_priority() bool {
    mut object_out := false
    classname := StringName.new("Material")
    defer { classname.deinit() }
    fnname := StringName.new("_can_use_render_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 0)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Material) set_next_pass(next_pass Material) {
    classname := StringName.new("Material")
    defer { classname.deinit() }
    fnname := StringName.new("set_next_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Material) get_next_pass() Material {
    mut object_out := Material(unsafe{nil})
    classname := StringName.new("Material")
    defer { classname.deinit() }
    fnname := StringName.new("get_next_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Material) set_render_priority(priority i32) {
    classname := StringName.new("Material")
    defer { classname.deinit() }
    fnname := StringName.new("set_render_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Material) get_render_priority() i32 {
    mut object_out := i32(0)
    classname := StringName.new("Material")
    defer { classname.deinit() }
    fnname := StringName.new("get_render_priority")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r Material) inspect_native_shader_code() {
    classname := StringName.new("Material")
    defer { classname.deinit() }
    fnname := StringName.new("inspect_native_shader_code")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &Material) create_placeholder() Resource {
    mut object_out := Resource(unsafe{nil})
    classname := StringName.new("Material")
    defer { classname.deinit() }
    fnname := StringName.new("create_placeholder")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 121922552)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
