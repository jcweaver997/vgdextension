module vgdextension

pub struct WorkerThreadPool {
    Object
}

pub fn WorkerThreadPool.get_singleton() WorkerThreadPool {
    sn := StringName.new("WorkerThreadPool")
    defer {sn.deinit()}
    o := WorkerThreadPool{
        ptr: gdf.global_get_singleton(sn)
    }
    return o
}

pub fn (mut r WorkerThreadPool) add_task(action Callable, high_priority bool, description String) i64 {
    mut object_out := i64(0)
    classname := StringName.new("WorkerThreadPool")
    defer { classname.deinit() }
    fnname := StringName.new("add_task")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3976347598)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&high_priority)}
    args[2] = unsafe{voidptr(&description)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WorkerThreadPool) is_task_completed(task_id i64) bool {
    mut object_out := false
    classname := StringName.new("WorkerThreadPool")
    defer { classname.deinit() }
    fnname := StringName.new("is_task_completed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&task_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WorkerThreadPool) wait_for_task_completion(task_id i64) GDError {
    mut object_out := GDError.ok
    classname := StringName.new("WorkerThreadPool")
    defer { classname.deinit() }
    fnname := StringName.new("wait_for_task_completion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&task_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WorkerThreadPool) add_group_task(action Callable, elements i32, tasks_needed i32, high_priority bool, description String) i64 {
    mut object_out := i64(0)
    classname := StringName.new("WorkerThreadPool")
    defer { classname.deinit() }
    fnname := StringName.new("add_group_task")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2377228549)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&elements)}
    args[2] = unsafe{voidptr(&tasks_needed)}
    args[3] = unsafe{voidptr(&high_priority)}
    args[4] = unsafe{voidptr(&description)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WorkerThreadPool) is_group_task_completed(group_id i64) bool {
    mut object_out := false
    classname := StringName.new("WorkerThreadPool")
    defer { classname.deinit() }
    fnname := StringName.new("is_group_task_completed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &WorkerThreadPool) get_group_processed_element_count(group_id i64) u32 {
    mut object_out := u32(0)
    classname := StringName.new("WorkerThreadPool")
    defer { classname.deinit() }
    fnname := StringName.new("get_group_processed_element_count")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r WorkerThreadPool) wait_for_group_task_completion(group_id i64) {
    classname := StringName.new("WorkerThreadPool")
    defer { classname.deinit() }
    fnname := StringName.new("wait_for_group_task_completion")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
}
