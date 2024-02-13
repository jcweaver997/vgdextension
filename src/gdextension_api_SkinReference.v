module vgdextension

@[noinit]
pub struct SkinReference {
    RefCounted
}

pub fn (r &SkinReference) get_skeleton() RID {
    mut object_out := RID{}
    classname := StringName.new("SkinReference")
    defer { classname.deinit() }
    fnname := StringName.new("get_skeleton")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2944877500)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &SkinReference) get_skin() Skin {
    mut object_out := Skin{}
    classname := StringName.new("SkinReference")
    defer { classname.deinit() }
    fnname := StringName.new("get_skin")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2074563878)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
