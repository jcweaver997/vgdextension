module vgdextension

pub struct PhysicsServer3DExtensionShapeRestInfo {
    pub mut:
    point Vector3
    normal Vector3
    rid RID
    collider_id ObjectID
    shape i64
    linear_velocity Vector3
}

