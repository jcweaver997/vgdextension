module vgdextension

pub struct Glyph {
    pub mut:
    start int = -1
    end int = -1
    count u8
    repeat u8 = 1
    flags u16
    x_off f32
    y_off f32
    advance f32
    font_rid RID
    font_size int
    index i32
}

