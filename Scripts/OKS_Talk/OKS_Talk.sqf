/// _null = [this,"talk_2","Download Intel",["TaskID","TaskTitle","TaskDescription","TaskMarker"]] execVM "OKS_Talk.sqf"
/*

Add the code below to an object you wish the action to appear from. Make sure you change the ID for every objective you make.

_null = [this,"task id","Action Name",
["task_id",
"Task Title",
"Task Description,
"Task Marker",
getMarkerPos 'task_marker_1',
TaskParent
]] execVM "Scripts\OKS_TALK\OKS_Talk.sqf"

_null = [this,"oks_task_1","Investigate Floppy Disk",
["Objective_1",
"Target of Opportunity",
"The information found on the Floppy disk leads to the village of Ravanay. A grad section is located in the town firing unto friendly positions to the south. Expect QRF response from nearby units, swift assault is recommended. It is lightly guarded and should be able to be taken swiftly.",
"Grad Battery",
getMarkerPos 'airTarget_2',
Task_0]] execVM "Scripts\OKS_TALK\OKS_Talk.sqf"


Below is the code for setting the Task to succeeded or failed depending on situation.

_null = [ObjectwithInteract,"SUCCEEDED"] execVM "Scripts\OKS_TALK\OKS_TaskState.sqf;

*/
_unit = _this select 0;
_id = _this select 1;
_name = _this select 2;

_taskID = ((_this select 3) select 0);
_taskTitle = [(_this select 3), 1, "No Title Found"] call BIS_fnc_param;
_taskDesc = [(_this select 3), 2, "No Description Found"] call BIS_fnc_param;
_taskMarker = [(_this select 3), 3, ""] call BIS_fnc_param;
_taskLocation = [(_this select 3), 4, objNull] call BIS_fnc_param;
_taskParent = [(_this select 3), 5, ""] call BIS_fnc_param;

_TaskInfo = [west, [format["%1",_taskID],format["%1",_taskParent]], [format["%1",_taskDesc], format["%1",_taskTitle], format["%1",_taskMarker]], _taskLocation,"CREATED",-1,false];
CopyToClipboard format ["%1",_TaskInfo];
_unit setVariable ["OKS_TASK_INFO",_TaskInfo];

	_Statement = {

		params["_Object","_Target","_Array"];
		systemChat format["%1",_Array select 6];
		player playMoveNow "AinvPknlMstpSnonWnonDnon_Putdown_AmovPknlMstpSnonWnonDnon";

		_taskParent = _Array select 0;
		_taskID = _Array select 1;
		_taskDesc = _Array select 2;
		_taskTitle = _Array select 3;
		_taskMarker = _Array select 4;
		_taskLocation = _Array select 5;
		_unit = _Array select 6;

		_Task = [west, [format["%1",_taskID],_taskParent], [format["%1",_taskDesc], format["%1",_taskTitle], format["%1",_taskMarker]], _taskLocation,"AUTOASSIGNED",-1,true] call BIS_fnc_taskCreate;



		_Object setVariable ["OKS_TASK_ID",_Task];
		_Action = _Object getVariable ["OKS_TASK_ACTION",false];
		[_Object,0,["ACE_MainActions",_Action]] remoteExec ["ace_interact_menu_fnc_removeActionFromObject",0];
		///[[],{[_Object,0,["ACE_MainActions",_Action]] call ace_interact_menu_fnc_removeActionFromObject;}] remoteExec ["BIS_FNC_CALL",0];

	};

	_Action = [_id,_name,"",_Statement,{true},{},[format["%1",_taskParent],format["%1",_taskID],format["%1",_taskDesc],format["%1",_taskTitle],format["%1",_taskMarker],_taskLocation,_unit],{}] call ace_interact_menu_fnc_createAction;
	_unit setVariable ["OKS_TASK_ACTION",_id];
	[_unit, 0, ["ACE_MainActions"], _Action] call ace_interact_menu_fnc_addActionToObject;

/*

_action = ["Spawn Vehicle","Spawn Vehicle","",{ [11] remoteExec ["GW_Fnc_spawnList",2] },{true}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;




*/

_action = ["Spawn Vehicle","Spawn Vehicle","",{[[],{[11] Spawn GW_Fnc_SpawnList}] remoteExec ["BIS_FNC_CALL",2];},{true}] call ace_interact_menu_fnc_createAction;
[this, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;