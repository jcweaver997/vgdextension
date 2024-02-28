module vgdextension

@[noinit]
pub struct WorkerThreadPool {
    Object
}

pub fn WorkerThreadPool.get_singleton() WorkerThreadPool {
    sn := StringName.new("WorkerThreadPool")
    o := WorkerThreadPool{
        ptr: gdf.global_get_singleton(sn)
    }
    sn.deinit()
    return o
}

pub fn (r &WorkerThreadPool) add_task(action Callable, high_priority bool, description string) i64 {
    mut object_out := i64(0)
    classname := StringName.new("WorkerThreadPool")
    fnname := StringName.new("add_task")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3745067146)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&high_priority)}
    arg_sn2 := String.new(description)
    args[2] = unsafe{voidptr(&arg_sn2)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn2.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WorkerThreadPool) is_task_completed(task_id i64) bool {
    mut object_out := false
    classname := StringName.new("WorkerThreadPool")
    fnname := StringName.new("is_task_completed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&task_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WorkerThreadPool) wait_for_task_completion(task_id i64) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("WorkerThreadPool")
    fnname := StringName.new("wait_for_task_completion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 844576869)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&task_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &WorkerThreadPool) add_group_task(action Callable, elements i32, tasks_needed i32, high_priority bool, description string) i64 {
    mut object_out := i64(0)
    classname := StringName.new("WorkerThreadPool")
    fnname := StringName.new("add_group_task")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1801953219)
    mut args := unsafe { [5]voidptr{} }
    args[0] = unsafe{voidptr(&action)}
    args[1] = unsafe{voidptr(&elements)}
    args[2] = unsafe{voidptr(&tasks_needed)}
    args[3] = unsafe{voidptr(&high_priority)}
    arg_sn4 := String.new(description)
    args[4] = unsafe{voidptr(&arg_sn4)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn4.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WorkerThreadPool) is_group_task_completed(group_id i64) bool {
    mut object_out := false
    classname := StringName.new("WorkerThreadPool")
    fnname := StringName.new("is_group_task_completed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1116898809)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WorkerThreadPool) get_group_processed_element_count(group_id i64) u32 {
    mut object_out := u32(0)
    classname := StringName.new("WorkerThreadPool")
    fnname := StringName.new("get_group_processed_element_count")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 923996154)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &WorkerThreadPool) wait_for_group_task_completion(group_id i64) {
    classname := StringName.new("WorkerThreadPool")
    fnname := StringName.new("wait_for_group_task_completion")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&group_id)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
