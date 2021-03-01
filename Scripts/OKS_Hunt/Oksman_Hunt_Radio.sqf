OKS_EnemyFaction = _this select 0;


if (!isServer) exitWith {false};	// Ensures only server or HC runs this script - Tack Neky


OKS_Loop_Radio = {

	_Corpse = _this select 0;

	while {!(isNull _Corpse) && OKS_Detected} do
	{
		SystemChat "Playing Radios";
		playSound3D [MISSION_ROOT + "OKS_HUNT\Radio\Radio1.ogg", _Corpse, false, getPosASL _Corpse, 1, 1, 17];
		sleep 6+(Random 4);

		playSound3D [MISSION_ROOT + "OKS_HUNT\Radio\Radio2.ogg", _Corpse, false, getPosASL _Corpse, 1, 1, 17];
		sleep 6+(Random 4);

		playSound3D [MISSION_ROOT + "OKS_HUNT\Radio\Radio3.ogg", _Corpse, false, getPosASL _Corpse, 1, 1, 17];
		sleep 6+(Random 4);

		playSound3D [MISSION_ROOT + "OKS_HUNT\Radio\Radio4.ogg", _Corpse, false, getPosASL _Corpse, 1, 1, 17];
		sleep 6+(Random 4);

		playSound3D [MISSION_ROOT + "OKS_HUNT\Radio\Radio5.ogg", _Corpse, false, getPosASL _Corpse, 1, 1, 17];
		sleep 25;

	};

};


while {oks_hunted} do
{
			{
				SystemChat "Radio Code Started";

				if(!(_X getVariable["OKS_Transmit",false])) then
				{

					if (([_X] call GW_Common_Fnc_getSide) == OKS_EnemyFaction) then {
						_X setVariable ["OKS_Transmit",true];
						_Radio = [_X] spawn OKS_Loop_Radio;
						};

				}
				else
				{

				}

			} forEach allDeadMen;

		sleep 10;
};


