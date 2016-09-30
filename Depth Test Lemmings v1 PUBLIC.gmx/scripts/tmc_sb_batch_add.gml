///tmc_sb_batch_add(script_batch,script,arguments...)
//
//  https://marketplace.yoyogames.com/assets/1972/tmc-script-batch

/*
    adds a script to the end of the script batch
    convering the passed script and argument to 
    a script call scructure.
    
*/
var script_batch = argument[0];
var num_calls = script_batch[@0];
var script_calls = script_batch[@1];
var args,call;

//convert argument 2 to n to an args array
//args will be {arg0,arg1,arg2...} from argument[1],arguemnt[2],arguemnt[3]...
args[0] = 0;
for(var i = argument_count-1; i>1; i--)
{
    args[i-2] = argument[i];
}
/* 
a call is an array with 
[0] being script and 
[1] being that array of arguments
{ script, args}
 expanded it looks like this
{ script, {arg0,arg1,arg2}}
*/
call = tmc_sb_to_array(argument[1],args)

//add the structure to the calls array
script_calls[@num_calls] = call;
num_calls++;
script_batch[@0] = num_calls;
/*
script_batch is 
{numcalls, script_calls}

expanted it looks like this
script_batch
{ 
    numcalls,
    {
        { script, {arg0,arg1,arg2}},
        { script, {arg0,arg1,arg2}},
        { script, {arg0,arg1,arg2}},
        { script, {arg0,arg1,arg2}},
        { script, {arg0,arg1,arg2}},
    }
}
*/
    
