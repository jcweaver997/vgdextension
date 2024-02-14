module vgdextension

pub enum FileAccessModeFlags as i64 {
    read = 1
    write = 2
    read_write = 3
    write_read = 7
}

pub enum FileAccessCompressionMode as i64 {
    compression_fastlz = 0
    compression_deflate = 1
    compression_zstd = 2
    compression_gzip = 3
    compression_brotli = 4
}

pub enum FileAccessUnixPermissionFlags as i64 {
    unix_read_owner = 256
    unix_write_owner = 128
    unix_execute_owner = 64
    unix_read_group = 32
    unix_write_group = 16
    unix_execute_group = 8
    unix_read_other = 4
    unix_write_other = 2
    unix_execute_other = 1
    unix_set_user_id = 2048
    unix_set_group_id = 1024
    unix_restricted_delete = 512
}

@[noinit]
pub struct FileAccess {
    RefCounted
}

pub fn FileAccess.open(path String, flags FileAccessModeFlags) FileAccess {
    mut object_out := FileAccess{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("open")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1247358404)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    i64_flags := i64(flags)
    args[1] = unsafe{voidptr(&i64_flags)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn FileAccess.open_encrypted(path String, mode_flags FileAccessModeFlags, key PackedByteArray) FileAccess {
    mut object_out := FileAccess{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("open_encrypted")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1482131466)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    i64_mode_flags := i64(mode_flags)
    args[1] = unsafe{voidptr(&i64_mode_flags)}
    args[2] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn FileAccess.open_encrypted_with_pass(path String, mode_flags FileAccessModeFlags, pass String) FileAccess {
    mut object_out := FileAccess{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("open_encrypted_with_pass")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 790283377)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    i64_mode_flags := i64(mode_flags)
    args[1] = unsafe{voidptr(&i64_mode_flags)}
    args[2] = unsafe{voidptr(&pass)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn FileAccess.open_compressed(path String, mode_flags FileAccessModeFlags, compression_mode FileAccessCompressionMode) FileAccess {
    mut object_out := FileAccess{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("open_compressed")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3686439335)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    i64_mode_flags := i64(mode_flags)
    args[1] = unsafe{voidptr(&i64_mode_flags)}
    i64_compression_mode := i64(compression_mode)
    args[2] = unsafe{voidptr(&i64_compression_mode)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn FileAccess.get_open_error() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_open_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn FileAccess.get_file_as_bytes(path String) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_file_as_bytes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659035735)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn FileAccess.get_file_as_string(path String) String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_file_as_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileAccess) flush() {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("flush")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FileAccess) get_path() String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_path")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_path_absolute() String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_path_absolute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) is_open() bool {
    mut object_out := false
    classname := StringName.new("FileAccess")
    fnname := StringName.new("is_open")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileAccess) seek(position u64) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("seek")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) seek_end(position i64) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("seek_end")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&position)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FileAccess) get_position() u64 {
    mut object_out := u64(0)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_position")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_length() u64 {
    mut object_out := u64(0)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_length")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) eof_reached() bool {
    mut object_out := false
    classname := StringName.new("FileAccess")
    fnname := StringName.new("eof_reached")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_8() u8 {
    mut object_out := u8(0)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_8")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_16() u16 {
    mut object_out := u16(0)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_16")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_32() u32 {
    mut object_out := u32(0)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_32")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_64() u64 {
    mut object_out := u64(0)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_64")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_float() f64 {
    mut object_out := f64(0)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_float")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_double() f64 {
    mut object_out := f64(0)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_double")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_real() f64 {
    mut object_out := f64(0)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_real")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_buffer(length i64) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4131300905)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_line() String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_csv_line(delim String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_csv_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2358116058)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delim)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) get_as_text(skip_cr bool) String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_as_text")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1162154673)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skip_cr)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn FileAccess.get_md5(path String) String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_md5")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn FileAccess.get_sha256(path String) String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_sha256")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &FileAccess) is_big_endian() bool {
    mut object_out := false
    classname := StringName.new("FileAccess")
    fnname := StringName.new("is_big_endian")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileAccess) set_big_endian(big_endian bool) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("set_big_endian")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&big_endian)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (r &FileAccess) get_error() GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_error")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3185525595)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn (r &FileAccess) get_var(allow_objects bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_var")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 189129690)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow_objects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileAccess) store_8(value u8) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_8")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_16(value u16) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_16")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_32(value u32) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_32")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_64(value u64) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_64")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_float(value f64) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_float")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_double(value f64) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_double")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_real(value f64) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_real")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_buffer(buffer PackedByteArray) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_buffer")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&buffer)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_line(line String) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&line)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_csv_line(values PackedStringArray, delim String) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_csv_line")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2173791505)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&values)}
    args[1] = unsafe{voidptr(&delim)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_string(gdstring String) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_var(value Variant, full_objects bool) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_var")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 738511890)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&value)}
    args[1] = unsafe{voidptr(&full_objects)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) store_pascal_string(gdstring String) {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("store_pascal_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&gdstring)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn (mut r FileAccess) get_pascal_string() String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_pascal_string")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (mut r FileAccess) close() {
    classname := StringName.new("FileAccess")
    fnname := StringName.new("close")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, r.ptr, unsafe{nil}, unsafe{nil})
    classname.deinit()
    fnname.deinit()
}
pub fn FileAccess.file_exists(path String) bool {
    mut object_out := false
    classname := StringName.new("FileAccess")
    fnname := StringName.new("file_exists")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn FileAccess.get_modified_time(file String) u64 {
    mut object_out := u64(0)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_modified_time")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1597066294)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn FileAccess.get_unix_permissions(file String) FileAccessUnixPermissionFlags {
    mut object_out := i64(FileAccessUnixPermissionFlags.unix_read_owner)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_unix_permissions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 524341837)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{FileAccessUnixPermissionFlags(object_out)}
}
pub fn FileAccess.set_unix_permissions(file String, permissions FileAccessUnixPermissionFlags) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("set_unix_permissions")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 846038644)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    i64_permissions := i64(permissions)
    args[1] = unsafe{voidptr(&i64_permissions)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn FileAccess.get_hidden_attribute(file String) bool {
    mut object_out := false
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_hidden_attribute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn FileAccess.set_hidden_attribute(file String, hidden bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("set_hidden_attribute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2892558115)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    args[1] = unsafe{voidptr(&hidden)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn FileAccess.set_read_only_attribute(file String, ro bool) GDError {
    mut object_out := i64(GDError.ok)
    classname := StringName.new("FileAccess")
    fnname := StringName.new("set_read_only_attribute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2892558115)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    args[1] = unsafe{voidptr(&ro)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return unsafe{GDError(object_out)}
}
pub fn FileAccess.get_read_only_attribute(file String) bool {
    mut object_out := false
    classname := StringName.new("FileAccess")
    fnname := StringName.new("get_read_only_attribute")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
