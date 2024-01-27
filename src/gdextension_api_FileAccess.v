module vgdextension

pub enum FileAccessModeFlags {
    read = 1
    write = 2
    read_write = 3
    write_read = 7
}

pub enum FileAccessCompressionMode {
    compression_fastlz = 0
    compression_deflate = 1
    compression_zstd = 2
    compression_gzip = 3
    compression_brotli = 4
}

pub type FileAccess = voidptr

pub fn FileAccess.open(path String, flags FileAccessModeFlags) FileAccess {
    mut object_out := FileAccess(unsafe{nil})
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("open")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1247358404)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&flags)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn FileAccess.open_encrypted(path String, mode_flags FileAccessModeFlags, key PackedByteArray) FileAccess {
    mut object_out := FileAccess(unsafe{nil})
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("open_encrypted")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1482131466)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&mode_flags)}
    args[2] = unsafe{voidptr(&key)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn FileAccess.open_encrypted_with_pass(path String, mode_flags FileAccessModeFlags, pass String) FileAccess {
    mut object_out := FileAccess(unsafe{nil})
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("open_encrypted_with_pass")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 790283377)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&mode_flags)}
    args[2] = unsafe{voidptr(&pass)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn FileAccess.open_compressed(path String, mode_flags FileAccessModeFlags, compression_mode FileAccessCompressionMode) FileAccess {
    mut object_out := FileAccess(unsafe{nil})
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("open_compressed")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2874458257)
    mut args := unsafe { [3]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    args[1] = unsafe{voidptr(&mode_flags)}
    args[2] = unsafe{voidptr(&compression_mode)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn FileAccess.get_open_error() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_open_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 166280745)
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn FileAccess.get_file_as_bytes(path String) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_as_bytes")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 659035735)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn FileAccess.get_file_as_string(path String) String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_file_as_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FileAccess) flush() {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("flush")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FileAccess) get_path() String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_path")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_path_absolute() String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_path_absolute")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) is_open() bool {
    mut object_out := false
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("is_open")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileAccess) seek(position i32) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("seek")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) seek_end(position i32) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("seek_end")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1995695955)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FileAccess) get_position() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_position")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_length() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_length")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) eof_reached() bool {
    mut object_out := false
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("eof_reached")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_8() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_8")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_16() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_16")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_32() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_32")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_64() i32 {
    mut object_out := i32(0)
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_64")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3905245786)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_float() f32 {
    mut object_out := f32(0)
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_float")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_double() f32 {
    mut object_out := f32(0)
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_double")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_real() f32 {
    mut object_out := f32(0)
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_real")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1740695150)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_buffer(length i32) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 4131300905)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&length)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_line() String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 201670096)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_csv_line(delim String) PackedStringArray {
    mut object_out := PackedStringArray{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_csv_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2358116058)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&delim)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_as_text(skip_cr bool) String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_as_text")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1162154673)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&skip_cr)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn FileAccess.get_md5(path String) String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_md5")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn FileAccess.get_sha256(path String) String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_sha256")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1703090593)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) is_big_endian() bool {
    mut object_out := false
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("is_big_endian")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 36873697)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileAccess) set_big_endian(big_endian bool) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("set_big_endian")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2586408642)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (r &FileAccess) get_error() GDError {
    mut object_out := GDError.ok
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_error")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3185525595)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (r &FileAccess) get_var(allow_objects bool) Variant {
    mut object_out := Variant{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_var")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 189129690)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&allow_objects)}
    gdf.object_method_bind_ptrcall(mb, voidptr(r), voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn (mut r FileAccess) store_8(value i32) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_8")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_16(value i32) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_16")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_32(value i32) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_32")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_64(value i32) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_64")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1286410249)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_float(value f32) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_float")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_double(value f32) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_double")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_real(value f32) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_real")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 373806689)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_buffer(buffer PackedByteArray) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_buffer")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2971499966)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_line(line String) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_csv_line(values PackedStringArray, delim String) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_csv_line")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2217842308)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_string(gdstring String) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_var(value Variant, full_objects bool) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_var")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 738511890)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) store_pascal_string(gdstring String) {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("store_pascal_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 83702148)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn (mut r FileAccess) get_pascal_string() String {
    mut object_out := String{}
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_pascal_string")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2841200299)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, voidptr(&object_out))
   return object_out
}
pub fn (mut r FileAccess) close() {
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("close")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 3218959716)
    gdf.object_method_bind_ptrcall(mb, voidptr(r), unsafe{nil}, unsafe{nil})
}
pub fn FileAccess.file_exists(path String) bool {
    mut object_out := false
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("file_exists")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2323990056)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&path)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
pub fn FileAccess.get_modified_time(file String) i32 {
    mut object_out := i32(0)
    classname := StringName.new("FileAccess")
    defer { classname.deinit() }
    fnname := StringName.new("get_modified_time")
    defer { fnname.deinit() }
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1597066294)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&file)}
    gdf.object_method_bind_ptrcall(mb, unsafe{nil}, voidptr(&args[0]), voidptr(&object_out))
   return object_out
}
