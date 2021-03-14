_group2=createGroup east;
'O_Soldier_AR_F' createUnit [getPosATL 'Spawnarea', _group2,'soldier=this; dostop soldier'];
laptop1 AddAction("<t color='#ff0000'>Delete Enemy</t>", {deletevehicle soldier;})

// Finish This script
