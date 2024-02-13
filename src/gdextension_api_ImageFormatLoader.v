module vgdextension

pub enum ImageFormatLoaderLoaderFlags {
    flag_none = 0
    flag_force_linear = 1
    flag_convert_colors = 2
}

@[noinit]
pub struct ImageFormatLoader {
    RefCounted
}

