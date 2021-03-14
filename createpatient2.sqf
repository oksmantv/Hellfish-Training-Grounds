{if ((typeOf _x == 'b_Soldier_F') && (!isPlayer _x)) then {deleteVehicle _x}} forEach allUnits;
[MedicalData2,3] call BIS_fnc_dataTerminalAnimate;
sleep 5;
_group1=createGroup west;
'b_Soldier_F' createUnit [getmarkerPos 'PatientSpawn3', _group1,'pat2=this; dostop pat2'];
[pat2, selectRandom[0.9,0.9], "leg_r", selectrandom ["bullet","bullet","bullet"]] call ace_medical_fnc_addDamageToUnit;
[pat2, selectRandom[0.9,0.9], "leg_l", selectrandom ["bullet","bullet","bullet"]] call ace_medical_fnc_addDamageToUnit;
[pat2, selectRandom[0.3,0.5,0.7,0.9], "body", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat2, selectRandom[0.3,0.5,0.7,0.9], "head", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat2, selectRandom[0.3,0.5,0.7,0.9], "hand_r", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat2, selectRandom[0.3,0.5,0.7,0.9], "hand_l", selectrandom ["stab","bullet","falling"]] call ace_medical_fnc_addDamageToUnit;
[pat2] call ace_medical_fnc_handleDamage_advancedSetDamage;
pat2 setUnitPos "DOWN";
[MedicalData2,0] call BIS_fnc_dataTerminalAnimate;
hint 'Your patient is ready';



//the first selctrandom chooses a randomish damage from a small one to a large one, the second selectrandom chooses the type of damage.
