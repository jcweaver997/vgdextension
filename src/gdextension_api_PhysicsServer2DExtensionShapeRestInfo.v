module vgdextension

pub struct PhysicsServer2DExtensionShapeRestInfo {
    pub mut:
    point Vector2
    normal Vector2
    rid RID
    collider_id ObjectID
    shape int
    linear_velocity Vector2
}

