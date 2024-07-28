if (rollback_sync_on_frame()) {
is_alive = false;
image_alpha = 0;
head.image_alpha = 0;
instance_destroy(other);
}