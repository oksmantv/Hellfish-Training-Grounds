
// B_Soldier_SL_F - wpl
// Equipment
_goggles = "";
_helmet = "rhsusf_ach_helmet_ESS_ucp";
_uniform = "rhs_uniform_cu_ucp_1stcav";
_vest = "rhsusf_iotv_ucp_Rifleman";
_backpack = "rhsusf_assault_eagleaiii_ucp";
// Primary
_silencer = "";
_pointer = "";
_sight = "CUP_optic_AC11704_Black";
_bipod = "";
_rifle = "rhs_weap_m240G";
_rifle_mag = "rhsusf_100Rnd_762x51";
_rifle_mag_tr = "rhsusf_100Rnd_762x51_m62_tracer";

// Secondary
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";
_LAT = "";
_LAT_mag = "";

// Handgun
_silencer = "";
_pointer = "";
_sight = "";
_bipod = "";
_pistol = "rhsusf_weap_m9";
_pistolMag = "rhsusf_mag_15Rnd_9x19_JHP";







_goggles = "G_Balaclava_TI_blk_F";
_helmet = "rhsusf_ach_helmet_headset_ess_ucp";
_uniform = "rhs_uniform_cu_ucp_1stcav";
_vest = "rhsusf_iotv_ucp_Rifleman";
_backpack = "rhsusf_assault_eagleaiii_ucp";
if (GVARMAIN(mod_TFAR)) then {
	_backpackRadio = "tf_anprc155_coyote";
};

if (_role isEqualTo "crew") then {
	_helmet = "CUP_H_USMC_Crew_Helmet";
	_vest = "CUP_V_B_IOTV_Rifleman";
};
if (_role isEqualTo "p") then {
	_helmet = "CUP_H_USMC_Helmet_Pilot";
	_uniform = "CUP_U_B_USArmy_PilotOverall";
	_vest = "CUP_V_B_USArmy_PilotVest";
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

_silencer = "";
_pointer = "";
_sight = "CUP_optic_AC11704_Black";
_bipod = "rhsusf_acc_grip1";

_rifle = ["rhs_weap_m4a1_carryhandle_grip", _silencer, _pointer, _sight, _bipod];
_rifleC = ["rhs_weap_m4a1_carryhandle_grip", _silencer, _pointer, _sight, _bipod];
_rifleGL = ["rhs_weap_m4a1_carryhandle_m203S", _silencer, _pointer, _sight, _bipod];
_rifle_mag = "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_rifle_mag_tr = "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";

_LMG = ["rhs_weap_m249_light_S_vfg2", _silencer, _pointer, _sight, _bipod];
_LMG_mag = "200Rnd_556x45_Box_Red_F";

_MMG = ["CUP_lmg_M240", _silencer, _pointer, _sight, _bipod];
_MMG_mag = "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M";

_LAT = ["rhs_weap_M136_hedp", _silencer, _pointer, _sight, _bipod];
_LAT_mag = "rhs_m136_hedp_mag";
_LAT_ReUsable = false;

_MAT = ["launch_MRAWS_olive_rail_F", _silencer, _pointer, "CUP_optic_SMAW_Scope", _bipod];
_MAT_mag = "MRAWS_HEAT_F";
_MAT_mag_HE = "MRAWS_HE_F";

_pistol = ["rhsusf_weap_m9", _silencer, _pointer, _sight, _bipod];
_pistol_mag = "rhsusf_mag_15Rnd_9x19_JHP";

_silencer = "muzzle_snds_B";
_pointer = "";
_sight = "optic_LRPS";
_bipod = "CUP_bipod_Harris_1A2_L";

_rifleMarksman = ["CUP_srifle_M14_DMR", _silencer, _pointer, _sight, _bipod];
_rifleMarksman_mag = "CUP_20Rnd_762x51_DMR";
_rifleMarksman_mag_tr = "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR";
