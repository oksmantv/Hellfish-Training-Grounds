
/// _null = [Task_Object_1,"SUCCEEDED"] execVM "OKS_Talk/OKS_TaskState.sqf";

	_TaskObject = _this select 0;
	_State = _this select 1;

	_Task = _TaskObject getVariable ["OKS_TASK_ID",false];
	_Action = _TaskObject getVariable ["OKS_TASK_ACTION",false];
	[_TaskObject,0,["ACE_MainActions",_Action]] call ace_interact_menu_fnc_removeActionFromObject;


	if("STRING" != typeName _Task) then {
		if(!_Task ) then {
			_TaskInfo = (_this select 0) getVariable ["OKS_TASK_INFO",false];
			_Task = _TaskInfo call BIS_fnc_taskCreate;
			[_Task,_State] call BIS_fnc_taskSetState;
		};
	}
	else {
			[_Task,_State] call BIS_fnc_taskSetState;
	};