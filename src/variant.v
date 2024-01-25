module vgdextension

pub fn (mut v Variant) deinit(){
	gdf.variant_destroy(mut v)
}