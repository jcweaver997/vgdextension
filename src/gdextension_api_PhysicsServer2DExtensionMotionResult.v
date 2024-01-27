module vgdextension

pub struct PhysicsServer2DExtensionMotionResult {
    pub mut:
    travel Vector2
    remainder Vector2
    collision_point Vector2
    collision_normal Vector2
    collider_velocity Vector2
    collision_depth f64
    collision_safe_fraction f64
    collision_unsafe_fraction f64
    collision_local_shape int
    collider_id ObjectID
    collider RID
    collider_shape int
}

