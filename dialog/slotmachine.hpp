class life_slotmachine
{
	name = "life_slotmachine";
	idd = 38205;
	fadein=0;
	duration = 99999999999;
	fadeout=0;
	movingEnable = 0;
	onLoad="uiNamespace setVariable ['life_slotmachine',_this select 0]";
	objects[]={};

	class controlsBackground 
	{
		class background : life_RscPicture 
		{
			idc = -1;
			text = "textures\casino\slotbg.jpg";
			x = safeZoneX+(safezoneW * 0.5)-0.5; y = safeZoneY+(safezoneH * 0.5)-0.5;
			w = 1; h = 1;
		};
		
		class ProgressText : Life_RscText
		{
			idc = 38206;
			text = "Lucky Diamonds";
			x = safeZoneX+(safezoneW * 0.5)-0.1;
			y = safeZoneY+(safezoneH * 0.5)-0.5;
			w = 0.65; h = 0.1;
		};
		
		class roll1 : life_RscPicture
		{
			idc = 38207;
			text = "textures\casino\slotrol_WP.jpg";
			x = safeZoneX+(safezoneW * 0.25) + 0.325; y = safeZoneY+(safezoneH * 0.5)-0.11;
			w = 0.13; h = 0.25;
		};
		
		class roll2 : life_RscPicture
		{
			idc = 38208;
			text = "textures\casino\slotrol_WP.jpg";
			x = safeZoneX+(safezoneW * 0.25) + 0.465; y = safeZoneY+(safezoneH * 0.5)-0.11;
			w = 0.13; h = 0.25;
		};
		
		class roll3 : life_RscPicture
		{
			idc = 38209;
			text = "textures\casino\slotrol_WP.jpg";
			x = safeZoneX+(safezoneW * 0.25) + 0.605; y = safeZoneY+(safezoneH * 0.5)-0.11;
			w = 0.13; h = 0.25;
		};
	};
};