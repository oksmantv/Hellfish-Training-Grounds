MISSION_ROOT = call {
    private "_arr";
    _arr = toArray __FILE__;
    _arr resize (count _arr - 8);
    toString _arr
};

execVM "Scripts\NEKY_Supply\Ace_Resupply.sqf";
execVM "Scripts\NEKY_Supply\Ace_Med.sqf";

[] execVM "Scripts\NEKY_ServiceStation\Init.sqf";
_null = [] execVM "Scripts\OKS_AAC\OKS_DAP_Config.sqf";

_null = [ShowCaseBoard_1,ShowCaseSpawn_1] execVM "Scripts\ShowCaseTarget.sqf";
_null = [ShowCaseBoard_2,ShowCaseSpawn_2] execVM "Scripts\ShowCaseTarget.sqf";
_null = [ShowCaseBoard_3,ShowCaseSpawn_3] execVM "Scripts\ShowCaseTarget.sqf";

null = execVM "Modules\HeadlessClient\hc\hc.sqf";
