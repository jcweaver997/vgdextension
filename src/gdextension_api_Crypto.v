module vgdextension

@[noinit]
pub struct Crypto {
    RefCounted
}

pub fn (r &Crypto) generate_random_bytes(size i32) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Crypto")
    fnname := StringName.new("generate_random_bytes")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 47165747)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Crypto) generate_rsa(size i32) CryptoKey {
    mut object_out := CryptoKey{}
    classname := StringName.new("Crypto")
    fnname := StringName.new("generate_rsa")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1237515462)
    mut args := unsafe { [1]voidptr{} }
    args[0] = unsafe{voidptr(&size)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Crypto) generate_self_signed_certificate(key CryptoKey, issuer_name string, not_before string, not_after string) X509Certificate {
    mut object_out := X509Certificate{}
    classname := StringName.new("Crypto")
    fnname := StringName.new("generate_self_signed_certificate")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 492266173)
    mut args := unsafe { [4]voidptr{} }
    args[0] = key.ptr
    arg_sn1 := String.new(issuer_name)
    args[1] = unsafe{voidptr(&arg_sn1)}
    arg_sn2 := String.new(not_before)
    args[2] = unsafe{voidptr(&arg_sn2)}
    arg_sn3 := String.new(not_after)
    args[3] = unsafe{voidptr(&arg_sn3)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    arg_sn1.deinit()
    arg_sn2.deinit()
    arg_sn3.deinit()
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Crypto) sign(hash_type HashingContextHashType, hash PackedByteArray, key CryptoKey) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Crypto")
    fnname := StringName.new("sign")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1673662703)
    mut args := unsafe { [3]voidptr{} }
    i64_hash_type := i64(hash_type)
    args[0] = unsafe{voidptr(&i64_hash_type)}
    args[1] = unsafe{voidptr(&hash)}
    args[2] = key.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Crypto) verify(hash_type HashingContextHashType, hash PackedByteArray, signature PackedByteArray, key CryptoKey) bool {
    mut object_out := false
    classname := StringName.new("Crypto")
    fnname := StringName.new("verify")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2805902225)
    mut args := unsafe { [4]voidptr{} }
    i64_hash_type := i64(hash_type)
    args[0] = unsafe{voidptr(&i64_hash_type)}
    args[1] = unsafe{voidptr(&hash)}
    args[2] = unsafe{voidptr(&signature)}
    args[3] = key.ptr
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Crypto) encrypt(key CryptoKey, plaintext PackedByteArray) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Crypto")
    fnname := StringName.new("encrypt")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2361793670)
    mut args := unsafe { [2]voidptr{} }
    args[0] = key.ptr
    args[1] = unsafe{voidptr(&plaintext)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Crypto) decrypt(key CryptoKey, ciphertext PackedByteArray) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Crypto")
    fnname := StringName.new("decrypt")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2361793670)
    mut args := unsafe { [2]voidptr{} }
    args[0] = key.ptr
    args[1] = unsafe{voidptr(&ciphertext)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Crypto) hmac_digest(hash_type HashingContextHashType, key PackedByteArray, msg PackedByteArray) PackedByteArray {
    mut object_out := PackedByteArray{}
    classname := StringName.new("Crypto")
    fnname := StringName.new("hmac_digest")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 2368951203)
    mut args := unsafe { [3]voidptr{} }
    i64_hash_type := i64(hash_type)
    args[0] = unsafe{voidptr(&i64_hash_type)}
    args[1] = unsafe{voidptr(&key)}
    args[2] = unsafe{voidptr(&msg)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
pub fn (r &Crypto) constant_time_compare(trusted PackedByteArray, received PackedByteArray) bool {
    mut object_out := false
    classname := StringName.new("Crypto")
    fnname := StringName.new("constant_time_compare")
    mb := gdf.classdb_get_method_bind(&classname, &fnname, 1024142237)
    mut args := unsafe { [2]voidptr{} }
    args[0] = unsafe{voidptr(&trusted)}
    args[1] = unsafe{voidptr(&received)}
    gdf.object_method_bind_ptrcall(mb, r.ptr, voidptr(&args[0]), voidptr(&object_out))
    classname.deinit()
    fnname.deinit()
   return object_out
}
