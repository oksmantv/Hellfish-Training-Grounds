_vehicle = _this select 0;

// How to use in init:
// _null = [] execVM "Scripts\OKS_AAC\OKS_DAP_Config.sqf";


/*if (TypeOf _Vehicle  == "CUP_B_UH1Y_Gunship_Dynamic_USMC" || TypeOf _Vehicle == "CUP_O_UH1H_gunship_TKA" || TypeOf _Vehicle == "CUP_B_MH47E_USA" || TypeOf _Vehicle == "CUP_B_UH1D_armed_GER_KSK" || typeOf _Vehicle == "CUP_B_UH1D_slick_GER_KSK" ||
typeOf _Vehicle == "CUP_B_UH1D_slick_GER_KSK_Des" || typeOf _Vehicle == "CUP_B_UH1D_gunship_GER_KSK_Des" || typeOf _Vehicle == "CUP_B_UH1D_gunship_GER_KSK" || typeOf _Vehicle == "CUP_B_UH1D_GER_KSK_Des" || typeOf _Vehicle == "CUP_B_UH1D_armed_GER_KSK_Des" || typeOf _Vehicle == "CUP_B_UH1D_GER_KSK") then
*/


OKS_Global_Air_Array = [];

OKS_AIR_CONFIG = {

	Params["_Vehicle"];

	if !(_Vehicle in OKS_Global_Air_Array && _vehicle isKindOf "Helicopter") then {

		if (["RHS_Mi8",TypeOf _Vehicle] call BIS_fnc_inString) then {

			_vehicle removeWeaponTurret ["rhs_weap_pkt_v1",[1]];
			_vehicle removeWeaponTurret ["rhs_weap_pkt_v2",[2]];
			_vehicle removeWeaponTurret ["rhs_weap_pkt_v3",[3]];

			//// Add Weapon
			if (Count (_vehicle weaponsTurret [1]) < 1) then {
				_vehicle addWeaponTurret ["CUP_Vacannon_Yakb_veh",[1]];
				_vehicle addMagazineTurret ["CUP_1470Rnd_TE1_127x108_YakB_AP_M",[1]];
			};

			if (Count (_vehicle weaponsTurret [2]) < 1) then {
				_vehicle addWeaponTurret ["CUP_Vacannon_Yakb_veh",[2]];
				_vehicle addMagazineTurret ["CUP_1470Rnd_TE1_127x108_YakB_AP_M",[2]];
			};

			if (Count (_vehicle weaponsTurret [3]) < 1) then {
				_vehicle addWeaponTurret ["CUP_Vacannon_Yakb_veh",[3]];
				_vehicle addMagazineTurret ["CUP_1470Rnd_TE1_127x108_YakB_AP_M",[3]];
			};
		};

		if (["UH1",TypeOf _Vehicle] call BIS_fnc_inString || ["MH47",TypeOf _Vehicle] call BIS_fnc_inString || ["CH47", TypeOf _Vehicle] call BIS_fnc_inString) then
		{
			_vehicle removeWeaponTurret ["CUP_Vlmg_M134_UH1Y_veh",[0]];
			_vehicle removeWeaponTurret ["CUP_Vlmg_M134_UH1Y_veh2",[1]];

			_vehicle removeWeaponTurret ["CUP_M134",[0]];
			_vehicle removeWeaponTurret ["CUP_M134_2",[1]];

			_vehicle removeWeaponTurret ["CUP_M240_uh1h_right_veh_W",[0]];
			_vehicle removeWeaponTurret ["CUP_M240_uh1h_left_veh_W",[1]];

			//// Add Weapon
			if (Count (_vehicle weaponsTurret [0]) < 1) then {
				_vehicle addWeaponTurret ["CUP_Vacannon_Yakb_veh",[0]];
				_vehicle addMagazineTurret ["CUP_1470Rnd_TE1_127x108_YakB_AP_M",[0]];
			};

			if (Count (_vehicle weaponsTurret [1]) < 1) then {
				_vehicle addWeaponTurret ["CUP_Vacannon_Yakb_veh",[1]];
				_vehicle addMagazineTurret ["CUP_1470Rnd_TE1_127x108_YakB_AP_M",[1]];
			};
		};
		if (["UH60",TypeOf _Vehicle] call BIS_fnc_inString || ["MH60",TypeOf _Vehicle] call BIS_fnc_inString || ["RHS_UH1Y",TypeOf _Vehicle] call BIS_fnc_inString) then {

			_vehicle removeWeaponTurret ["CUP_Vlmg_M134_veh", [1]];
			_vehicle removeWeaponTurret ["CUP_Vlmg_M134_veh2", [2]];
			_vehicle removeWeaponTurret ["CUP_M134_2",[0]];
			_vehicle removeWeaponTurret ["CUP_M134",[1]];
			_vehicle removeWeaponTurret ["LMG_Minigun_Transport",[1]];
			_vehicle removeWeaponTurret ["LMG_Minigun_Transport2",[2]];
			_vehicle removeWeaponTurret ["rhs_weap_m134_minigun_1",[1]];
			_vehicle removeWeaponTurret ["rhs_weap_m134_minigun_2",[2]];
			_vehicle removeWeaponTurret ["CUP_Vhmg_GAU21_MH60_Left",[1]];
			_vehicle removeWeaponTurret ["CUP_Vhmg_GAU21_MH60_Right",[2]];

			//// Add Weapon
			if (Count (_vehicle weaponsTurret [1]) < 1) then {
				_vehicle addWeaponTurret ["CUP_Vacannon_Yakb_veh",[1]];
				_vehicle addMagazineTurret ["CUP_1470Rnd_TE1_127x108_YakB_AP_M",[1]];
			};

			if (Count (_vehicle weaponsTurret [2]) < 1) then {
				_vehicle addWeaponTurret ["CUP_Vacannon_Yakb_veh",[2]];
				_vehicle addMagazineTurret ["CUP_1470Rnd_TE1_127x108_YakB_AP_M",[2]];
			};
		};

		_null = [_vehicle] execVM "Scripts\OKS_AAC\OKS_Interact_Apply.sqf";
		OKS_Global_Air_Array pushBackUnique _Vehicle;
	};


};


while {true} do {

	{ _null = [_X] spawn OKS_AIR_CONFIG; } forEach entities "helicopter";
	sleep 10;

};