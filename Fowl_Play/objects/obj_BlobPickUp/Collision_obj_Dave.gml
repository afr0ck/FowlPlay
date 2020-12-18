// Destroy current blob is exists
if (instance_exists(obj_Blob)) instance_destroy(obj_Blob);

// Reset previous blob pick up if currently gone
if (obj_Dave.activeID != 0) instance_activate_object(obj_Dave.activeID);


// Set blob type based on object variable
if (blob_type == "cranberry") {
	instance_create_layer(obj_Dave.x, obj_Dave.y, "Active", obj_Cranberry);
} else {
	instance_create_layer(x, y, "Active", obj_Tater);	
}

// Destroy pick up object
instance_deactivate_object(ID)
obj_Dave.activeID = ID