module vgdextension

@[heap]
pub struct Variant {
        godot_data [24]u8 // filler
}

pub fn (v &Variant) deinit(){
	gdf.variant_destroy(v)
}