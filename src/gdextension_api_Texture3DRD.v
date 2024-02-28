module vgdextension

@[noinit]
pub struct Texture3DRD {
    Texture3D
}

pub fn (r &Texture3DRD) set_texture_rd_rid(texture_rd_rid RID) {
    classname := StringName.new("Texture3DRD")
    fnname := StringName.new("set_texture_rd_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2722037293)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&texture_rd_rid)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Texture3DRD) get_texture_rd_rid() RID {
    mut object_out := RID{}
    classname := StringName.new("Texture3DRD")
    fnname := StringName.new("get_texture_rd_rid")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
