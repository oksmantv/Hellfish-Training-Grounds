




_goggles = "";
_helmet = selectRandom ["CUP_H_USArmy_Helmet_M1_Vine","CUP_H_USArmy_Helmet_M1_plain_Vine","H_HelmetIA","H_Booniehat_mgrn","H_Cap_grn"];
_uniform = selectRandom ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt"];
_vest = selectRandom ["V_TacVest_oli","V_TacVest_oli"];
_backpack = "B_FieldPack_oli";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_anprc155";
};
if (_role in ["ag","ammg"]) then {
	_backpack = "B_Carryall_oli";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_I";
	_vest = "V_TacVest_oli";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_I";
	_uniform = "U_I_HeliPilotCoveralls";
	_vest = "V_TacVest_oli";

};
if (_role isEqualTo "uav") then {
	_backpack = "I_UAV_01_backpack_F";
	_gps = "I_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};

_silencer = "";
_pointer = "";
_sight = "optic_MRCO";
_bipod = "";

_rifle = ["CUP_arifle_M16A1E1", _silencer, _pointer, _sight, _bipod];
_rifleC = ["CUP_SKS_rail", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["CUP_arifle_M16A1E1GL", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "CUP_30Rnd_556x45_Stanag";
_rifleC_mag = "CUP_10Rnd_762x39_SKS_M";
_rifle_mag_tr = "30Rnd_556x45_Stanag_Tracer_Red";

_LMG = ["CUP_lmg_UK59", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "CUP_50Rnd_UK59_762x54R_Tracer";
_LMG_mag_tr = "CUP_50Rnd_UK59_762x54R_Tracer";

_MMG = ["LMG_Mk200_F", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "200Rnd_65x39_cased_Box";
_MMG_mag_tr = "200Rnd_65x39_cased_Box_Tracer";


_LAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_rpg7_OG7V_mag";
_LAT_ReUsable = true;

_MAT = ["launch_RPG7_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "rhs_rpg7_OG7V_mag";
_MAT_mag_HE = "rhs_rpg7_OG7V_mag";

_pistol = ["hgun_ACPC2_F", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "9Rnd_45ACP_Mag";

_silencer = "muzzle_snds_B_khk_F";
_pointer = "acc_pointer_IR";
_sight = "optic_LRPS_tna_F";
_bipod = "bipod_03_F_oli";

_rifleMarksman = ["srifle_DMR_03_woodland_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "20Rnd_762x51_Mag";
_rifleMarksman_mag_tr = "20Rnd_762x51_Mag";
