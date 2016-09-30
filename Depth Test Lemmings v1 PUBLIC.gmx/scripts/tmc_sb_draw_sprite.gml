///tmc_sb_draw_sprite( sprite, subimg, x, y);
//
//  https://marketplace.yoyogames.com/assets/1972/tmc-script-batch

/*
 equivalent to draw_sprite_ext
 
 DO NOT CALL DIRECTLY!
 the arguments listed above are actually in an array, 
 only a single argument, the arguments array is passed
 I simply use the argument in the ///function(a1,a2,a3)
 as a cheat to access the arguments required when calling
 tmc_sb_script_add(script_batch,MyFunction,arg1,arg2)
 typing MuFunction( will pop the required arguments in the code 
 editor status line
 
 you can actually call directly with
 MyFunction(tmc_sb_to_array(1,2,3,4));
*/

var args = argument0;
//shoe_debug_message(args)
draw_sprite(args[0],args[1],args[2],args[3]);
