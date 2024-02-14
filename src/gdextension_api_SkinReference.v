module vgdextension

@[noinit]
pub struct SkinReference {
    RefCounted
}

pub fn (r &SkinReference) get_skeleton() RID {
    mut object_out := RID{}
    classname := StringName.new("SkinReference")
    fnname := StringName.new("get_skeleton")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &SkinReference) get_skin() Skin {
    mut object_out := Skin{}
    classname := StringName.new("SkinReference")
    fnname := StringName.new("get_skin")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074563878)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
