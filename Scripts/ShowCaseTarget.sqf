///
/// [ActionObject,SpawnObject] execVM "Scripts\ShowCaseTarget.sqf"
///

Params["_Object","_SpawnPos"];
private ["_Trigger","_APC_Array","_TANK_Array","_IFV_Array"];


OKS_ShowCaseSpawn = {

	params ["_Classname","_SpawnPos","_Trigger"];

	{
		if (_X isKindOf "Car" || _X isKindOf "Car" || _X isKindOf "Tank" || _X isKindOf "Helicopter" || _X isKindOf "Wreck") then {
			DeleteVehicle _X;
		}
	} foreach list _Trigger;

	sleep 0.1;

	_Vehicle = CreateVehicle [_Classname, _SpawnPos, [], 0, "CAN_COLLIDE"];
	_vehicle setFuel 0;
	_Vehicle lock true;
	_Vehicle setDir GetDir _SpawnPos;
	sleep 2;
	_Vehicle enableSImulation false;

};

	_Car_Array = [
		["UAZ (Dshkm)","CUP_O_UAZ_MG_RU"],
		["UAZ (SPG-9)","CUP_O_UAZ_SPG9_RU"],
		["Ural","CUP_O_Ural_RU"],
		["Karatel / IFrit","O_MRAP_02_hmg_F"],
		["LSV Mk. II (Minigun)","O_LSV_02_armed_F"],
		["GAZ-233114","rhs_tigr_sts_3camo_vmf" ],
		["Land Rover (M2)","CUP_O_LR_MG_TKM"]
	];

	_APC_Array = [
		["BRDM-2","CUP_O_BRDM2_RUS"],
		["BTR-60","CUP_O_BTR60_Green_RU"],
		["BTR-80","CUP_O_BTR80_GREEN_RU"],
		["BTR-80A","CUP_O_BTR80A_GREEN_RU"],
		["BTR-90","CUP_O_BTR90_RU"],
		["Otakar Arma","O_APC_Wheeled_02_rcws_v2_F"],
		["MTLB LV","CUP_O_MTLB_pk_Green_RU"],
		["BTR-40","CUP_O_BTR40_MG_TKM"],
		["M113","CUP_O_M113_TKA"]
	];

	_IFV_Array = [
		["BM-2T Stalker","O_APC_Tracked_02_cannon_F"],
		["BMP-3 (RHS)","rhs_bmp3_msv"],
		["BMD-4","rhs_bmd4_vdv"],
		["BMD-1","rhs_bmd1"],
		["BMD-2","rhs_bmd2"],
		["BMP-1","CUP_I_BMP1_TK_GUE"],
		["BMP-3 (CUP)","CUP_O_BMP3_RU"],
		["BMP-2","CUP_O_BMP2_RU"],
		["BMP-2K","CUP_O_BMP_HQ_RU"]
	];

	_TANK_Array = [
		["T-72","CUP_O_T72_RU"],
		["T-90","CUP_O_T90_RU"],
		["T-14 Armata","O_MBT_04_cannon_F"],
		["T-100 Black Eagle","O_MBT_02_cannon_F"],
		["2S25 Sprut","rhs_sprut_vdv"],
		["T-55","CUP_O_T55_SLA"],
		["T-34-85","CUP_O_T34_TKA"]
	];

	_Heli_Array = [
		["Mi-8","CUP_O_Mi8_CHDKZ"],
		["Mi-8-MTV3","RHS_Mi8MTV3_vdv"],
		["Mi-24P","CUP_O_Mi24_P_Dynamic_RU"],
		["Mi-24V","CUP_O_Mi24_V_Dynamic_RU"],
		["Mi-48 Kajman","O_Heli_Attack_02_dynamicLoadout_F"],
		["KA-60","O_Heli_Light_02_dynamicLoadout_F"],
		["Mi-28N","rhs_mi28n_vvs"],
		["UH-1H","CUP_O_UH1H_armed_SLA"],
		["KA-50","CUP_O_Ka50_DL_SLA"],
		["KA-52","RHS_Ka52_vvsc"]
	];

	_Trigger = createTrigger ["EmptyDetector", getPosWorld _SpawnPos, false];
	_Trigger setTriggerActivation ["ANY", "PRESENT", true];
	_Trigger setTriggerArea [4, 6, GetDir _SpawnPos, false];


	//// Car Tree
	_action = ["Category_Car","Category Car","",{},{true}] call ace_interact_menu_fnc_createAction;
	[_Object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	{
		_action = ["Car",(_X select 0),"",{ [(_this select 2) select 0,(_this select 2) select 1,(_this select 2) select 2] spawn OKS_ShowCaseSpawn; },{true},{},[(_X select 1),_SpawnPos,_Trigger]] call ace_interact_menu_fnc_createAction;
		[_Object, 0, ["ACE_MainActions","Category_Car"], _action] call ace_interact_menu_fnc_addActionToObject;

	} foreach _Car_Array;


	//// APC Tree
	_action = ["Category_APC","Category APC","",{},{true}] call ace_interact_menu_fnc_createAction;
	[_Object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	{
		_action = ["APC",(_X select 0),"",{ [(_this select 2) select 0,(_this select 2) select 1,(_this select 2) select 2] spawn OKS_ShowCaseSpawn; },{true},{},[(_X select 1),_SpawnPos,_Trigger]] call ace_interact_menu_fnc_createAction;
		[_Object, 0, ["ACE_MainActions","Category_APC"], _action] call ace_interact_menu_fnc_addActionToObject;

	} foreach _APC_Array;

	//// IFV Tree
	_action = ["Category_IFV","Category IFV","",{},{true}] call ace_interact_menu_fnc_createAction;
	[_Object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	{
		_action = ["IFV",(_X select 0),"",{ [(_this select 2) select 0,(_this select 2) select 1,(_this select 2) select 2] spawn OKS_ShowCaseSpawn; },{true},{},[(_X select 1),_SpawnPos,_Trigger]] call ace_interact_menu_fnc_createAction;
		[_Object, 0, ["ACE_MainActions","Category_IFV"], _action] call ace_interact_menu_fnc_addActionToObject;

	} foreach _IFV_Array;

	//// Tank Tree
	_action = ["Category_Tank","Category Tank","",{},{true}] call ace_interact_menu_fnc_createAction;
	[_Object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	{
		_action = ["Tank",(_X select 0),"",{ [(_this select 2) select 0,(_this select 2) select 1,(_this select 2) select 2] spawn OKS_ShowCaseSpawn; },{true},{},[(_X select 1),_SpawnPos,_Trigger]] call ace_interact_menu_fnc_createAction;
		[_Object, 0, ["ACE_MainActions","Category_Tank"], _action] call ace_interact_menu_fnc_addActionToObject;

	} foreach _TANK_Array;

	//// Helicopter Tree
	_action = ["Category_Helo","Category Helicopter","",{},{true}] call ace_interact_menu_fnc_createAction;
	[_Object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	{
		_action = ["Helo",(_X select 0),"",{ [(_this select 2) select 0,(_this select 2) select 1,(_this select 2) select 2] spawn OKS_ShowCaseSpawn; },{true},{},[(_X select 1),_SpawnPos,_Trigger]] call ace_interact_menu_fnc_createAction;
		[_Object, 0, ["ACE_MainActions","Category_Helo"], _action] call ace_interact_menu_fnc_addActionToObject;

	} foreach _Heli_Array;