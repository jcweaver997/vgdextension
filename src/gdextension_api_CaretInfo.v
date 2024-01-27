module vgdextension

pub struct CaretInfo {
    pub mut:
    leading_caret Rect2
    trailing_caret Rect2
    leading_direction TextServerDirection
    trailing_direction TextServerDirection
}

