module vgdextension

pub enum ResourceImporterImportOrder {
    import_order_default = 0
    import_order_scene = 100
}

@[noinit]
pub struct ResourceImporter {
    RefCounted
}

