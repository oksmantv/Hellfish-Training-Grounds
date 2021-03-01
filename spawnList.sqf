/*
	AUTHOR: GuzzenVonLidl
	Description:
		What case tha should be called for the zone player is in
	Usage:
		null = [1] spawn GW_Fnc_spawnList;
	Parameters:
		#0: Number:	Activate zone
	Returning Value:
		None
*/
#include "script_Component.hpp"
#define	COMPONENT spawnList

if !(isServer) then {false};

params [
	"_case"
];

private ["_Classname"];
_Classname = ["CUP_O_BMP2_RU","CUP_O_BMP3_RU","CUP_O_BTR60_RU","CUP_O_BTR80_GREEN_RU","CUP_O_BTR80A_GREEN_RU","CUP_O_BTR90_RU","CUP_O_T72_SLA","CUP_I_BMP1_TK_GUE","CUP_I_BRDM2_TK_Gue","CUP_I_T55_TK_GUE","CUP_I_T34_TK_GUE","CUP_O_ZSU23_SLA"] call BIS_fnc_selectRandom;


switch (_case) do {

	case 1: {

		// Live Exercise Touch & GO
		// #1
		[[[[12422.9,14342.9,12.0223],150,"Up",[]],[[12417,14333.7,8.57638],57,"Up",[]],[[12409.4,14349.7,8.16599],123,"Up",[]],[[12399.8,14341.9,8.87554],57,"Up",[]],[[12410.6,14331.1,4.67496],57,"Up",[]],[[12402.2,14336.8,4.77125],62,"Up",[]],[[12393.8,14354.5,4.75124],143,"Up",[]],[[12412.5,14351.7,4.08304],155,"Up",[]],[[12414.7,14328.8,0.84332],51,"Up",[]],[[12410,14327,0.900478],337,"Up",[]],[[12405,14340.1,0.488423],68,"Up",[]],[[12401.3,14356.6,0.315077],57,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		// #2
		[[[[12452.1,14247.2,10.3751],57,"Up",[]],[[12444.9,14263.3,9.35182],127,"Up",[]],[[12435,14255.9,10.851],57,"Up",[]],[[12458.5,14257.1,13.0166],149,"Up",[]],[[12445.1,14273.5,5.01743],166,"Up",[]],[[12431.2,14262.7,6.63195],150,"Up",[]],[[12437.4,14250.8,6.92436],54,"Up",[]],[[12445.9,14244.7,6.83069],60,"Up",[]],[[12450,14242.9,2.70642],40,"Up",[]],[[12445.9,14241,3.12279],323,"Up",[]],[[12440.9,14252.8,2.8593],57,"Up",[]],[[12438.3,14269.5,1.54429],308,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
	};

	case 2: {
		//// CQB Exercise
		/// Dense Compound Units
		[[[[12317.6,15807.2,0.511948],68,"Middle",[]],[[12317.7,15812.8,0.586483],104,"Up",[]],[[12323.5,15811.1,0.726503],183,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12313.1,15811,4.48946],206,"Up",[]],[[12309.5,15812.6,1.11786],139,"Up",[]],[[12301.1,15812,4.64359],145,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12291.3,15807.1,3.71389],27,"Up",[]],[[12291.4,15814.6,3.7131],135,"Up",[]],[[12297.7,15816.6,3.71023],83,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12288.1,15807.5,4.15413],263,"Up",[]],[[12285.4,15812.2,0.303041],149,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12321,15789.6,4.28664],242,"Up",[]],[[12325.2,15790.1,0.983063],190,"Up",[]],[[12325.3,15790.5,4.42988],8,"Middle",[]],[[12322.8,15798.4,4.60331],147,"Up",[]],[[12328.2,15796.5,1.48514],278,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12315.6,15798.7,4.1755],178,"Middle",[]],[[12311,15798.2,0.367266],181,"Up",[]],[[12312.9,15795.4,4.1968],339,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12316.5,15783.6,4.79991],179,"Up",[]],[[12314.9,15779.1,4.68734],301,"Up",[]],[[12312.6,15777,0.951082],201,"Up",[]],[[12305.6,15778.5,4.24934],7,"Middle",[]],[[12307.1,15783.1,4.26715],177,"Up",[]],[[12306.2,15782.7,0.836519],169,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12292.4,15784.8,3.76062],77,"Middle",[]],[[12293.8,15783.7,0.34091],69,"Up",[]],[[12297.8,15782.7,3.6715],356,"Up",[]],[[12300,15781.5,0.252754],326,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12284.7,15779.8,0.221634],95,"Up",[]],[[12278.8,15780.8,0.350096],359,"Up",[]],[[12280.7,15794.3,4.60533],119,"Middle",[]],[[12280.4,15794.3,0.735989],92,"Middle",[]],[[12285.9,15794.4,4.50124],174,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12331.7,15761.5,0.202551],291,"Up",[]],[[12337.8,15767.6,0.591543],241,"Up",[]],[[12320.6,15748.6,0],34,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12323,15743.3,0.0770683],51,"Up",[]],[[12318.3,15758.7,0.338879],92,"Up",[]],[[12313.2,15754.7,0],242,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12320.4,15762.6,3.61298],339,"Up",[]],[[12318.6,15762,0.176546],354,"Middle",[]],[[12313.8,15765.6,3.63829],184,"Middle",[]],[[12320.8,15768.8,0.460209],255,"Middle",[]],[[12323.1,15768.2,3.77453],4,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12316.4,15750.2,0.691181],315,"Middle",[]],[[12313.2,15747.9,0.444183],157,"Middle",[]],[[12314.1,15745.5,4.23558],332,"Up",[]],[[12311.2,15741.9,3.99167],133,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12313.1,15733.5,1.44215],189,"Up",[]],[[12315.2,15726.8,1.09084],152,"Up",[]],[[12311.8,15728.4,4.61167],306,"Up",[]],[[12303.7,15727.8,1.19564],36,"Up",[]],[[12303.1,15734.3,4.66362],154,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12297.5,15725.5,3.38748],128,"Up",[]],[[12298.2,15729.4,0.24053],264,"Up",[]],[[12300.8,15731.8,3.72942],288,"Up",[]],[[12300,15737.2,3.64601],73,"Up",[]],[[12298.9,15735.2,3.80208],221,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12290,15731.7,0.262785],355,"Up",[]],[[12288.6,15735,4.21573],174,"Up",[]],[[12286.9,15728.4,0.204147],189,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12280.7,15740.9,0.410425],54,"Middle",[]],[[12278.1,15742.9,0.495642],186,"Middle",[]],[[12274.1,15741,0.561863],95,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12295.5,15744.7,1.15015],194,"Up",[]],[[12297.4,15747.9,4.54492],29,"Up",[]],[[12299,15747.3,1.0821],242,"Up",[]],[[12301.8,15746.3,4.44399],270,"Up",[]],[[12302.2,15754.7,4.72865],242,"Up",[]],[[12295.3,15759.6,1.97474],14,"Middle",[]],[[12297.6,15756.5,1.43945],101,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12293.5,15762.9,3.8109],192,"Up",[]],[[12303.1,15766.4,0.399221],103,"Up",[]],[[12302.6,15760.7,0.232826],322,"Middle",[]],[[12305.2,15760,3.66498],171,"Middle",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12299.6,15768.9,4.12172],329,"Up",[]],[[12299.8,15772.2,0.309132],238,"Middle",[]],[[12302.7,15771,0.294699],117,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12280.9,15749.5,4.18698],92,"Middle",[]],[[12280,15748.5,0.292242],76,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12279,15754.1,3.77235],61,"Up",[]],[[12278.4,15753.4,0.361874],49,"Up",[]],[[12279.1,15759.5,0.651314],147,"Up",[]],[[12287.4,15756.1,3.94922],148,"Up",[]],[[12279.7,15760.5,4.1475],154,"Middle",[]],[[12276,15760.2,4.01936],359,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;
		[[[[12279.4,15764.9,4.46849],101,"Up",[]],[[12282.4,15770.4,4.54533],214,"Up",[]],[[12279.2,15773.7,1.36445],79,"Up",[]],[[12280.9,15774.1,4.69184],94,"Up",[]],[[12285.5,15770.5,0.893421],110,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

	};

	case 3: {
		//// Air Assault Exercise
		//// Heli Compound 3
		{deleteVehicle _X} foreach list helicompound1;

		sleep 5;

		[[[[19289.4,18038.7,7.04863],273,"Up",[]],[[19310.6,18044,6.15126],273,"Up",[]],[[19312.8,18040.5,6.09775],201,"Up",[]],[[19301.5,18054.9,6.24319],235,"Up",[]],[[19304.5,18072.8,9.29781],317,"Up",[]],[[19339.4,18048.1,8.04732],122,"Up",[]],[[19326,18070.2,7.58389],25,"Up",[]],[[19310.3,18069.9,1.76508],245,"Up",[]],[[19331.4,18049,1.02016],345,"Up",[]],[[19297.7,18038.2,0.393997],201,"Up",[]],[[19295.5,18038.7,3.62643],201,"Up",[]],[[19323.9,18065.7,0.649273],250,"Up",[]],[[19311.8,18045.1,-3.05176e-005],0,"Up",[]],[[19308.5,18071.1,5.51141],0,"Up",[]],[[19298.9,18065.8,5.97436],0,"Up",[]],[[19325.7,18076.7,-3.05176e-005],310,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;


	};

	case 4: {
		//// Air Assault Exercise
		/// Counter 3
		sleep 10;

		[[[[19101.8,17584.7,0],0,[]],[[19106.8,17579.7,0],0,[]],[[19096.8,17579.7,-3.8147e-006],0,[]],[[19111.8,17574.7,0],0,[]]],[],[[[19281.1,18057.3,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 30;

		[[[[18665.9,18066.7,0],83,[]],[[18661.5,18061.1,0],83,[]],[[18660.3,18071,0],83,[]],[[18657.1,18055.6,0],83,[]]],[],[[[19314.4,18099,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 30;

		[[[[19779.7,17931.5,-7.62939e-006],262,[]],[[19783.9,17937.2,0.420677],262,[]],[[19785.3,17927.3,0],262,[]],[[19788.2,17942.8,0],262,[]]],[],[[[19330.4,18025.9,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 30;

		[[[[19696,18792,0],204,[]],[[19693.5,18798.6,0],204,[]],[[19702.6,18794.5,0],204,[]],[[19691,18805.2,0],204,[]]],[],[[[19343.5,18067,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 60;

		[[],[["CUP_O_LR_Transport_TKA",[19414.2,18887.4,9.15527e-005],213,[["driver",-1,[]],["cargo",2,[]],["cargo",3,[]],["cargo",0,[0]],["cargo",1,[1]]],[[6,["TKA",1]],[7,["selection_tool",1,"selection_jerry",1,"selection_antenna",0,"selection_antenna_rear",1,"selection_box",1,"selection_steps",1,"selection_wheelfront",0,"selection_bar",0,"selection_tarp",0,"selection_doors",0,"selection_rear",0,"selection_roll",0,"selection_wind",0]]]]],[[[19281,18128.3,0],[[0,"SAD"],[1,"SAFE"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 5: {
		//// Air Assault Exercise
		/// Heli Compound 2
		{deleteVehicle _X} foreach list helicompound2;

		sleep 5;

		[[[[22579.3,16354.7,1.19944],216,"Up",[]],[[22583,16351.9,1.22967],216,"Up",[]],[[22582.7,16360.3,0.441965],356,"Up",[]],[[22596.2,16354.4,0.261978],118,"Up",[]],[[22587.9,16342.7,0.261978],113,"Up",[]],[[22535.4,16400.4,0.261977],247,"Up",[]],[[22530,16396.1,0.261978],216,"Up",[]],[[22579.3,16423.2,0.261978],331,"Up",[]],[[22600.2,16402.2,0.45789],216,"Up",[]],[[22606.1,16397.6,0.424728],216,"Up",[]],[[22574.5,16389.6,0.685143],216,"Up",[]],[[22568.5,16393.2,0.677223],216,"Up",[]],[[22568.8,16383.5,0.526254],216,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[22614.3,16388.7,0],0,[]],[[22619.3,16386.7,0],0,[]]],[],[[[22596.6,16364.5,0],[[0,"Move"],[1,"SAFE"]]],[[22554.1,16369.9,-1.14441e-005],[[0,"Move"]]],[[22573,16415.3,9.53674e-007],[[0,"Move"]]],[[22603.6,16411.7,3.8147e-005],[[0,"Move"]]],[[22619.1,16392.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;

		[[[[22543.1,16390.2,0],79,[]],[[22542,16384.9,0],79,[]]],[],[[[22547.2,16406.5,0],[[0,"Move"],[1,"SAFE"]]],[[22579.8,16419,0],[[0,"Move"]]],[[22611.1,16390.6,-9.53674e-007],[[0,"Move"]]],[[22592.9,16367.9,0],[[0,"Move"]]],[[22550,16382.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;


	};

	case 6: {

		sleep 10;
		//// Air Assault Exercise
		//// Counter 2
		[[[[22526.1,16040.5,0],6,[]],[[22530.6,16035,0.680928],6,[]],[[22520.6,16036,0],6,[]],[[22535,16029.5,0],6,[]]],[],[[[22557.8,16303,0.619911],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 30;

		[[[[22182.6,16215.3,0],43,[]],[[22182.9,16208.3,0],43,[]],[[22175.6,16215.1,0],43,[]],[[22183.1,16201.2,0],43,[]]],[],[[[22560.3,16404.7,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 30;

		[[[[22649.1,16832.8,0],174,[]],[[22643.6,16837.2,0],174,[]],[[22653.6,16838.3,0],174,[]],[[22638.1,16841.6,0],174,[]]],[],[[[22583.2,16424.6,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 60;

		[[],[["CUP_O_BTR40_TKA",[21445.7,16380.1,0],136,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]]],[[6,["TKA",1]]]]],[[[22491.6,16389.9,-9.53674e-007],[[0,"SAD"],[1,"SAFE"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 7: {
		//// Air Assault Exercise
		/// Heli Compound 1
		{deleteVehicle _X} foreach list helicompound3;

		sleep 5;

		[[[[19233.1,13173.6,5.72205e-005],228,"Up",[]],[[19247,13205.2,5.72205e-005],160,"Up",[]],[[19264,13166.2,5.72205e-005],228,"Up",[]],[[19265.8,13215.2,0.152134],228,"Up",[]],[[19282.2,13194.7,5.34058e-005],228,"Up",[]],[[19289.4,13187.5,0.525398],228,"Up",[]],[[19290.6,13183.6,0.245136],228,"Up",[]],[[19282.1,13204.5,3.95171],228,"Up",[]],[[19275.8,13214.5,4.21626],228,"Up",[]],[[19274.6,13212.9,0.745235],228,"Up",[]],[[19280.5,13204,0.464638],228,"Up",[]],[[19265.3,13190.3,0.356579],228,"Up",[]],[[19272.5,13173.7,0.262089],100,"Up",[]],[[19272.8,13177.9,0.415874],293,"Up",[]],[[19256.3,13175.6,6.10352e-005],284,"Up",[]]],[],[]] call GW_Common_fnc_spawnGroup;

		[[[[19294.4,13176.5,0],0,[]],[[19299.4,13174.5,0],0,[]]],[],[[[19295.3,13198.1,0.879162],[[0,"Move"]]],[[19271.3,13228.3,0],[[0,"Move"]]],[[19264.8,13170.3,0],[[0,"Move"]]],[[19292,13176.6,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[19241,13156.9,0],0,[]],[[19246,13154.9,-3.8147e-006],0,[]]],[],[[[19266,13174.8,0],[[0,"Move"]]],[[19252,13203.6,1.90735e-005],[[0,"Move"]]],[[19233.2,13164,3.43323e-005],[[0,"Move"]]],[[19238.6,13157.1,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;
		[[[[19220.4,13185.1,0],0,[]],[[19225.4,13183.1,0],0,[]]],[],[[[19233.6,13209.7,0],[[0,"Move"]]],[[19256.1,13234.8,0],[[0,"Move"]]],[[19220.9,13204.9,3.8147e-006],[[0,"Move"]]],[[19218,13185.3,0],[[0,"Cycle"]]]]] call GW_Common_fnc_spawnGroup;


	};

	case 8: {

		sleep 10;
		//// Air Assault Exercise
		//// Counter 1

		[[[[19170.6,12831.2,0],0,[]],[[19175.6,12826.2,0],0,[]],[[19165.6,12826.2,0],0,[]],[[19180.6,12821.2,0],0,[]]],[],[[[19253,13195.9,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 30;

		[[[[18982.3,13380.5,0],117,[]],[[18975.6,13378.3,0],117,[]],[[18980.1,13387.2,0],117,[]],[[18968.9,13376,0],117,[]]],[],[[[19260.3,13198.6,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 30;

		[[[[19366.1,13329,0],210,[]],[[19364.3,13335.8,8.16452],210,[]],[[19372.9,13330.8,3.98857],210,[]],[[19362.4,13342.6,0],210,[]]],[],[[[19279.1,13193.8,0],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 30;

		[[[[19574.7,13058.7,0.62088],316,[]],[[19581.8,13058.5,0.62088],316,[]],[[19574.6,13051.6,0.62088],316,[]],[[19588.9,13058.4,0.62088],316,[]]],[],[[[19262.7,13174.4,0.620964],[[0,"SAD"]]]]] call GW_Common_fnc_spawnGroup;

		sleep 60;

		[[],[["CUP_I_BTR40_TKG",[19764.7,13523.5,2.47955e-005],253,[["driver",-1,[]],["cargo",0,[]],["cargo",1,[]],["cargo",2,[]],["cargo",3,[]]],[[6,["TKG",1]]]]],[[[19276.4,13162.2,0],[[0,"SAD"],[1,"SAFE"]]]]] call GW_Common_fnc_spawnGroup;

	};

	case 9:{

		//// AT Range
		/// Range 1
		private ["_Random"];
		_Random = round random 4;

		switch (_Random) do {

			case 0:{

				[[],[[_Classname,[9129.77,16850.6,7.62939e-006],12,[["driver",-1,[]]],[]]],[[[9174.35,17093.7,0],[[0,"Move"],[1,"AWARE"]]],[[9126.84,17402.4,0],[[0,"Move"]]],[[9105.94,17802.7,0.222153],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 1:{

				[[],[[_Classname,[9427.63,16773.5,0],328,[["driver",-1,[]]],[]]],[[[9372.58,17060.1,0],[[0,"Move"],[1,"AWARE"]]],[[9247.25,17438.6,0],[[0,"Move"]]],[[9125.71,17822.3,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 2:{

				[[],[[_Classname,[9704.47,16899.4,0],328,[["driver",-1,[]]],[]]],[[[9609.65,17117.7,0],[[0,"Move"],[1,"AWARE"]]],[[9424.15,17413.6,1.52588e-005],[[0,"Move"]]],[[9133.53,17839.7,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 3:{

				[[],[[_Classname,[9014.08,17079.1,0],21,[["driver",-1,[]]],[]]],[[[9050.35,17153.9,0],[[0,"Move"],[1,"AWARE"]]],[[9071.81,17223,0],[[0,"Move"]]],[[9092.89,17828.3,1.52588e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 4:{

				[[],[[_Classname,[9363.74,16559.8,0.878975],328,[["driver",-1,[]]],[]]],[[[9270.96,16803.4,0],[[0,"Move"],[1,"AWARE"]]],[[9245.11,17096.4,0],[[0,"Move"]]],[[9104.71,17822.6,1.52588e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};
		}

	};

	case 10:{

		//// AT Range
		/// Range 2
		private ["_Random"];
		_Random = round random 4;

		switch (_Random) do {

			case 0:{

				[[],[[_Classname,[7871.48,17686.4,0],74,[["driver",-1,[]]],[]]],[[[8179.95,17762.4,0],[[0,"Move"],[1,"AWARE"]]],[[8560.31,17795.9,1.52588e-005],[[0,"Move"]]],[[8907.41,17864.9,0.222137],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 1:{

				[[],[[_Classname,[8390.65,17397.4,1.52588e-005],15,[["driver",-1,[]]],[]]],[[[8507.12,17617,0],[[0,"Move"],[1,"AWARE"]]],[[8615.1,17772.9,1.52588e-005],[[0,"Move"]]],[[8932.55,17852.9,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 2:{

				[[],[[_Classname,[7882.22,17795.5,0],82,[["driver",-1,[]]],[]]],[[[8355.88,17903.2,0],[[0,"Move"],[1,"AWARE"]]],[[8624.74,17897.3,0],[[0,"Move"]]],[[8922.81,17864.4,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 3:{

				[[],[[_Classname,[7932.49,18073.8,0],94,[["driver",-1,[]]],[]]],[[[8262.34,18003.6,0],[[0,"Move"],[1,"AWARE"]]],[[8556.21,17934.8,0.0727539],[[0,"Move"]]],[[8919.41,17877.8,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 4:{

				[[],[[_Classname,[8050.67,17443.6,0.87854],39,[["driver",-1,[]]],[]]],[[[8418.36,17641.1,0],[[0,"Move"],[1,"AWARE"]]],[[8697.32,17742.9,0],[[0,"Move"]]],[[8925.73,17872.8,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

		}

	};

	case 11:{

		//// AT Range
		/// Range 3
		private ["_Random"];
		 _Random = round random 4;



		switch (_Random) do {

			case 0:{

				[[],[[_Classname,[10305,18869.2,0.00224304],213,[["driver",-1,[]]],[]]],[[[10268.9,18759.4,0],[[0,"Move"],[1,"AWARE"]]],[[9683.84,18419.2,5.34058e-005],[[0,"Move"]]],[[9121.35,18002.6,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 1:{

				[[],[[_Classname,[10057.5,18961.4,-0.00114441],213,[["driver",-1,[]]],[]]],[[[10017.5,18892.8,0],[[0,"Move"],[1,"AWARE"]]],[[9813.69,18724.1,-0.541611],[[0,"Move"]]],[[9111.42,18044.3,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 2:{

				[[],[[_Classname,[9757.05,18994.7,0.0116882],213,[["driver",-1,[]]],[]]],[[[9652.04,18897.1,1.52588e-005],[[0,"Move"],[1,"AWARE"]]],[[9487.7,18660.5,0],[[0,"Move"]]],[[9085.92,18049.1,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 3:{

				[[],[[_Classname,[10301.2,18441.8,0.0168304],244,[["driver",-1,[]]],[]]],[[[10166.6,18393.9,0],[[0,"Move"],[1,"AWARE"]]],[[9633.63,18219.6,0],[[0,"Move"]]],[[9119.78,18012,1.52588e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 4:{

				[[],[[_Classname,[10544.6,18863,0.00354767],213,[["driver",-1,[]]],[]]],[[[10314.8,18664.9,0],[[0,"Move"],[1,"AWARE"]]],[[10052.5,18549.9,0],[[0,"Move"]]],[[9300.86,18151.4,67.4612],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			default {
				SystemChat "_Random is not in range of cases defined.";
			};

		};

	};

	case 12:{

		//// AT Range
		/// Range 4
		private ["_Random"];
		 _Random = round random 4;



		switch (_Random) do {

			case 0:{

				[[],[[_Classname,[10164.6,17572.8,0],289,[["driver",-1,[]]],[]]],[[[9904.19,17682.8,0],[[0,"Move"],[1,"AWARE"]]],[[9635.3,17756.8,0],[[0,"Move"]]],[[9182.96,17870.8,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 1:{

				[[],[[_Classname,[10289.3,17751.7,1.52588e-005],263,[["driver",-1,[]]],[]]],[[[10107.2,17733.5,1.52588e-005],[[0,"Move"],[1,"AWARE"]]],[[9919.65,17865.7,0],[[0,"Move"]]],[[9208.31,17905.3,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 2:{

				[[],[[_Classname,[10288.7,18044.6,0],263,[["driver",-1,[]]],[]]],[[[10054.3,18092,0],[[0,"Move"],[1,"AWARE"]]],[[9917.36,18078.1,0],[[0,"Move"]]],[[9195.78,17919.7,0],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 3:{

				[[],[[_Classname,[10174.8,17271.3,0],312,[["driver",-1,[]]],[]]],[[[9950.08,17438.3,0],[[0,"Move"],[1,"AWARE"]]],[[9729.98,17605.5,0],[[0,"Move"]]],[[9189.08,17878,1.52588e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

			case 4:{

				[[],[[_Classname,[10454.5,17593.1,0.878975],263,[["driver",-1,[]]],[]]],[[[10194.4,17610.8,0],[[0,"Move"],[1,"AWARE"]]],[[9917.5,17709.9,0],[[0,"Move"]]],[[9199.24,17886.4,1.52588e-005],[[0,"Move"]]]]] call GW_Common_fnc_spawnGroup;

			};

		}

	};

	default {
		ERROR(FORMAT_1("Case missing: %1", _case));
	};
};
