module vgdextension

pub struct PhysicsServer3DExtensionMotionCollision {
    pub mut:
    position Vector3
    normal Vector3
    collider_velocity Vector3
    collider_angular_velocity Vector3
    depth f64
    local_shape i32
    collider_id ObjectID
    collider RID
    collider_shape i32
}

