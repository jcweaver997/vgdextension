module vgdextension

pub struct PhysicsServer3DExtensionMotionResult {
    pub mut:
    travel Vector3
    remainder Vector3
    collision_depth f64
    collision_safe_fraction f64
    collision_unsafe_fraction f64
    collisions[32] PhysicsServer3DExtensionMotionCollision
    collision_count i64
}

