/// How to use: Put a invisible helipad facing the direction you wish the vehicle to face and input this in the init:
/// [this] execVM "Scripts\REspawnStaticTarget.sqf"
/// Adjust the array of classnames below to change target dynamic.


if(!isServer) exitWith {};

Params["_Object"];
private ["_Classname"];

while {true} do {

	_Position = [GetPosATL _Object select 0,GetPosATL _Object select 1,GetPosATL _Object select 2+0.2];
	_Direction = GetDir _Object;

	_Classname = ["CUP_O_BMP2_RU","CUP_O_BMP3_RU","CUP_O_BTR60_RU","CUP_O_BTR80_GREEN_RU","CUP_O_BTR80A_GREEN_RU","CUP_O_BTR90_RU","CUP_O_T72_SLA","CUP_I_BMP1_TK_GUE","CUP_I_BRDM2_TK_Gue","CUP_I_T55_TK_GUE","CUP_I_T34_TK_GUE","CUP_O_ZSU23_SLA"] call BIS_fnc_selectRandom;

	sleep 5;

	_Vehicle = CreateVehicle [_Classname, _Position, [], 0, "CAN_COLLIDE"];
	_Vehicle setDir _Direction;

	waitUntil{sleep 5; (!Alive _Vehicle)};
	deleteVehicle _Vehicle;

}