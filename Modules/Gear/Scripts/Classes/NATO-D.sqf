_useMineDetector = true;


_goggles = "rhsusf_shemagh_tan";
_helmet = "rhsusf_lwh_helmet_marpatwd_blk_ess";
_uniform = "rhs_uniform_FROG01_wd";
_vest = "rhsusf_spc_patchless_radio";
_backpack = "B_Kitbag_cbr";
_backpackRadio = _backpack;
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_anprc155_coyote";
};

if (_role in ["ag","ammg","r"]) then {
	_backpack = "B_Carryall_cbr";
};
if (_role isEqualTo "crew") then {
	_helmet = "H_HelmetCrew_B";
	_vest = "V_BandollierB_khk";
};
if (_role isEqualTo "p") then {
	_helmet = "H_PilotHelmetHeli_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_TacVest_blk";
};
if (_role isEqualTo "uav") then {
	_backpack = "B_UAV_01_backpack_F";
	_gps = "B_UAVTerminal";

};
if (_role isEqualTo "jetp") then {
	_goggles = "G_Aviator";
	_helmet = "H_PilotHelmetFighter_B";
	_uniform = "U_B_PilotCoveralls";
	_vest = "V_Rangemaster_belt";
	_backpack = "B_Parachute";
};


_silencer = "rhsusf_acc_SFMB556";
_pointer = "";
_sight = "";
_bipod = "rhsusf_acc_grip3";

_rifle = ["rhs_weap_m16a4_carryhandle_grip2", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m16a4_carryhandle_grip2", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m16a4_carryhandle_M203", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_LMG = ["rhs_weap_m249_light_S", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
_LMG_mag_tr = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";

_MMG = ["rhs_weap_m249_light_S", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";
_MMG_mag_tr = "CUP_200Rnd_TE4_Red_Tracer_556x45_M249";

_sight = "";

_LAT = ["launch_MRAWS_green_F", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "MRAWS_HEAT_F";
_LAT_ReUsable = true;
if (GVARMAIN(mod_ACE3)) then {
	_LAT_ReUsable = true;
};

_MAT = ["launch_MRAWS_green_F", _silencer, _pointer, _sight, _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HEAT_F";

_pistol = ["rhsusf_weap_m9", _silencer, _pointer, "optic_MRD", _bipod];
_pistol_mag = "rhsusf_mag_15Rnd_9x19_JHP";

_silencer = "muzzle_snds_338_sand";
_pointer = "acc_pointer_IR";
_sight = "optic_LRPS";
_bipod = "bipod_01_F_snd";

_rifleMarksman = ["srifle_DMR_02_sniper_F", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "10Rnd_338_Mag";
_rifleMarksman_mag_tr = "10Rnd_338_Mag";
