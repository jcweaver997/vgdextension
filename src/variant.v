module vgdextension

@[heap]
pub struct Variant {
        godot_data [24]u8 // filler
}

pub interface ToVariant {
	to_var() Variant
}

pub interface FromVariant {
	mut:
	set_from_var(var &Variant)
}

pub fn (v &Variant) deinit(){
	gdf.variant_destroy(v)
}