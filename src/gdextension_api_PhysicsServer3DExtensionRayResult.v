module vgdextension

pub struct PhysicsServer3DExtensionRayResult {
    pub mut:
    position Vector3
    normal Vector3
    rid RID
    collider_id ObjectID
    collider &Object
    shape i64
    face_index i64
}

