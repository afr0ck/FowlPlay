/// @description Insert description here
// You can write your code in this editor
// Destroy current blob is exists
if (instance_exists(obj_Cranberry)){
	instance_activate_object(obj_Dave.activeID)
	instance_destroy(obj_Cranberry);
}
if (instance_exists(obj_Tater)){
	instance_activate_object(obj_Dave.activeID)
	instance_destroy(obj_Tater);
}

// Set blob type based on object variable
if (blob_type == "cranberry") {
	instance_create_layer(obj_Dave.x, obj_Dave.y, "Active", obj_Cranberry);
} else {
	instance_create_layer(x, y, "Active", obj_Tater);	
}

// Destroy pick up object
instance_deactivate_object(ID)
obj_Dave.activeID = ID