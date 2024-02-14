module vgdextension

pub enum SkyRadianceSize as i64 {
    radiance_size_32 = 0
    radiance_size_64 = 1
    radiance_size_128 = 2
    radiance_size_256 = 3
    radiance_size_512 = 4
    radiance_size_1024 = 5
    radiance_size_2048 = 6
    radiance_size_max = 7
}

pub enum SkyProcessMode as i64 {
    process_mode_automatic = 0
    process_mode_quality = 1
    process_mode_incremental = 2
    process_mode_realtime = 3
}

@[noinit]
pub struct Sky {
    Resource
}

pub fn (mut r Sky) set_radiance_size(size SkyRadianceSize) {
    classname := StringName.new("Sky")
    fnname := StringName.new("set_radiance_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1512957179)
    mut args := unsafe { [1]voidptr{} }
    i64_size := i64(size)
    args[0] = unsafe{voidptr(&i64_size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Sky) get_radiance_size() SkyRadianceSize {
    mut object_out := i64(SkyRadianceSize.radiance_size_32)
    classname := StringName.new("Sky")
    fnname := StringName.new("get_radiance_size")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2708733976)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{SkyRadianceSize(object_out)}
}
pub fn (mut r Sky) set_process_mode(mode SkyProcessMode) {
    classname := StringName.new("Sky")
    fnname := StringName.new("set_process_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 875986769)
    mut args := unsafe { [1]voidptr{} }
    i64_mode := i64(mode)
    args[0] = unsafe{voidptr(&i64_mode)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Sky) get_process_mode() SkyProcessMode {
    mut object_out := i64(SkyProcessMode.process_mode_automatic)
    classname := StringName.new("Sky")
    fnname := StringName.new("get_process_mode")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 731245043)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{SkyProcessMode(object_out)}
}
pub fn (mut r Sky) set_material(material Material) {
    classname := StringName.new("Sky")
    fnname := StringName.new("set_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2757459619)
    mut args := unsafe { [1]voidptr{} }
    args[0] = material.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &Sky) get_material() Material {
    mut object_out := Material{}
    classname := StringName.new("Sky")
    fnname := StringName.new("get_material")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 5934680)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
