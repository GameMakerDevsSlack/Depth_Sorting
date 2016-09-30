///tmc_sb_batch_execute_reset()
//
//  https://marketplace.yoyogames.com/assets/1972/tmc-script-batch

/*
    executes the script batch and rtests the number of scripts to 0 without clearing the script batch 
    
    leaves dangling array items which should be cleared by the garbage container
*/
var script_batch = argument0;
var num_calls = script_batch[@0];
var script_calls = script_batch[@1];
var call;
//loop though the calls array and execute the script
for(var i = 0; i<num_calls; i++)
{
    //get the call for the calls array at index
    call = script_calls[@i];
    //call is {script,{arg0,arg1,...}}
    //a call knows it's arguments are in the form of an array, so just call the script, passiong the array
    script_execute(call[0],call[1]);
    //shoe_debug_message(call)
    //clear the array at entry
    //clear the arguments array in call
    //call[@1] = 0;
    //and clear the call array from the calls array
    //script_calls[@i] = 0;
}
//reset the number of calls to 0;
num_calls = 0;
script_batch[@0] = 0;
//script_batch[@1] = tmc_sb_to_array(0,0);
