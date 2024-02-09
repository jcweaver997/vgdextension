module vgdextension

pub enum TimeMonth {
    month_january = 1
    month_february = 2
    month_march = 3
    month_april = 4
    month_may = 5
    month_june = 6
    month_july = 7
    month_august = 8
    month_september = 9
    month_october = 10
    month_november = 11
    month_december = 12
}

pub enum TimeWeekday {
    weekday_sunday = 0
    weekday_monday = 1
    weekday_tuesday = 2
    weekday_wednesday = 3
    weekday_thursday = 4
    weekday_friday = 5
    weekday_saturday = 6
}

pub struct Time {
    Object
}

pub fn Time.get_singleton() Time {
    sn := StringName.new("Time")
    defer {sn.deinit()}
    o := Time{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (r &Time) get_datetime_dict_from_unix_time(unix_time_val i64) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_datetime_dict_from_unix_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unix_time_val)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_date_dict_from_unix_time(unix_time_val i64) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_date_dict_from_unix_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unix_time_val)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_time_dict_from_unix_time(unix_time_val i64) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_dict_from_unix_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3485342025)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unix_time_val)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_datetime_string_from_unix_time(unix_time_val i64, use_space bool) String {
    mut object_out := String{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_datetime_string_from_unix_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2311239925)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&unix_time_val)}
    args[1] = unsafe{voidptr(&use_space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_date_string_from_unix_time(unix_time_val i64) String {
    mut object_out := String{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_date_string_from_unix_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unix_time_val)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_time_string_from_unix_time(unix_time_val i64) String {
    mut object_out := String{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_string_from_unix_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&unix_time_val)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_datetime_dict_from_datetime_string(datetime String, weekday bool) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_datetime_dict_from_datetime_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3253569256)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&datetime)}
    args[1] = unsafe{voidptr(&weekday)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_datetime_string_from_datetime_dict(datetime Dictionary, use_space bool) String {
    mut object_out := String{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_datetime_string_from_datetime_dict")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1898123706)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&datetime)}
    args[1] = unsafe{voidptr(&use_space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_unix_time_from_datetime_dict(datetime Dictionary) i64 {
    mut object_out := i64(0)
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_unix_time_from_datetime_dict")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3021115443)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&datetime)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_unix_time_from_datetime_string(datetime String) i64 {
    mut object_out := i64(0)
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_unix_time_from_datetime_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1321353865)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&datetime)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_offset_string_from_offset_minutes(offset_minutes i64) String {
    mut object_out := String{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_offset_string_from_offset_minutes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844755477)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&offset_minutes)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_datetime_dict_from_system(utc bool) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_datetime_dict_from_system")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 205769976)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&utc)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_date_dict_from_system(utc bool) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_date_dict_from_system")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 205769976)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&utc)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_time_dict_from_system(utc bool) Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_dict_from_system")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 205769976)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&utc)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_datetime_string_from_system(utc bool, use_space bool) String {
    mut object_out := String{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_datetime_string_from_system")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1136425492)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&utc)}
    args[1] = unsafe{voidptr(&use_space)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_date_string_from_system(utc bool) String {
    mut object_out := String{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_date_string_from_system")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1162154673)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&utc)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_time_string_from_system(utc bool) String {
    mut object_out := String{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_string_from_system")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1162154673)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&utc)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_time_zone_from_system() Dictionary {
    mut object_out := Dictionary{}
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_time_zone_from_system")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3102165223)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_unix_time_from_system() f64 {
    mut object_out := f64(0)
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_unix_time_from_system")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_ticks_msec() u64 {
    mut object_out := u64(0)
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_ticks_msec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &Time) get_ticks_usec() u64 {
    mut object_out := u64(0)
    classname := StringName.new("Time")
    defer { classname.deinit() }
    fnname := StringName.new("get_ticks_usec")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
   return object_out
}
