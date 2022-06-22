function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // a_updates
	global.__objectDepths[1] = 0; // obj_control
	global.__objectDepths[2] = -1; // obj_selector
	global.__objectDepths[3] = 0; // obj_grass
	global.__objectDepths[4] = 0; // obj_forest
	global.__objectDepths[5] = 0; // obj_mountain
	global.__objectDepths[6] = 0; // obj_water
	global.__objectDepths[7] = 0; // obj_road_h
	global.__objectDepths[8] = 0; // obj_road_v
	global.__objectDepths[9] = 0; // obj_road_tr
	global.__objectDepths[10] = 0; // obj_city
	global.__objectDepths[11] = 0; // obj_factory
	global.__objectDepths[12] = 0; // obj_airport
	global.__objectDepths[13] = 0; // obj_port
	global.__objectDepths[14] = 0; // obj_bridge_h
	global.__objectDepths[15] = 0; // obj_bridge_v


	global.__objectNames[0] = "a_updates";
	global.__objectNames[1] = "obj_control";
	global.__objectNames[2] = "obj_selector";
	global.__objectNames[3] = "obj_grass";
	global.__objectNames[4] = "obj_forest";
	global.__objectNames[5] = "obj_mountain";
	global.__objectNames[6] = "obj_water";
	global.__objectNames[7] = "obj_road_h";
	global.__objectNames[8] = "obj_road_v";
	global.__objectNames[9] = "obj_road_tr";
	global.__objectNames[10] = "obj_city";
	global.__objectNames[11] = "obj_factory";
	global.__objectNames[12] = "obj_airport";
	global.__objectNames[13] = "obj_port";
	global.__objectNames[14] = "obj_bridge_h";
	global.__objectNames[15] = "obj_bridge_v";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
