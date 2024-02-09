module vgdextension

pub struct PhysicsServer2DExtensionShapeResult {
    pub mut:
    rid RID
    collider_id ObjectID
    collider &Object
    shape i32
}

