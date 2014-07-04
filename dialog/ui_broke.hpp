class playerHUD 
	{
		idd = -1;
		movingEnable = 0;
		fadein = 0;
		duration = 99999999999999999999999999999999999999999999;
		fadeout = 0;
		name = "playerHUD";
		onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
		objects[] = {};
	
		class controlsBackground 
		{
			class healthHIcon : Life_RscPicture 
			{
				idc = -1;
				text = "icons\health.paa";
				x = safeZoneX+safeZoneW-0.06;
				y = safeZoneY+safeZoneH-0.32;
				w = 0.05; h = 0.05;
			};
	
			class foodHIcon : Life_RscPicture 
			{
				idc = -1;
				text = "icons\food.paa";
				x = safeZoneX+safeZoneW-0.06;
				y = safeZoneY+safeZoneH-0.26;
				w = 0.05; h = 0.05;
			};
		
			class waterHIcon : Life_RscPicture 
			{
				idc = -1;
				text = "icons\water.paa";
				x = safeZoneX+safeZoneW-0.06;
				y = safeZoneY+safeZoneH-0.2;
				w = 0.05; h = 0.05;
			};
		};
	
		class controls 
		{
			class healthtext 
			{
				type = 0;
				idc = 23515;
				style = 0;
				x = safeZoneX+safeZoneW-0.105;
				y = safeZoneY+safeZoneH-0.32;
				w = 0.3;
				h = 0.05;
				sizeEx = 0.03;
				size = 1;
				font = "PuristaSemibold";
				colorBackground[] = {0, 0, 0, 0};
				colorText[] = {1, 1, 1, 1};
				shadow = true;
				text = "";
			};
		
			class foodtext 
			{
				type = 0;
				idc = 23500;
				style = 0;
				x = safeZoneX+safeZoneW-0.105;
				y = safeZoneY+safeZoneH-0.26;
				w = 0.3;
				h = 0.05;
				sizeEx = 0.03;
				size = 1;
				font = "PuristaSemibold";
				colorBackground[] = {0, 0, 0, 0};
				colorText[] = {1, 1, 1, 1};
				shadow = true;
				text = "";
			};
		
			class watertext 
			{
				type = 0;
				idc = 23510;
				style = 0;
				x = safeZoneX+safeZoneW-0.105;
				y = safeZoneY+safeZoneH-0.2;
				w = 0.3;
				h = 0.05;
				sizeEx = 0.03;
				size = 1;
				font = "PuristaSemibold";
				colorBackground[] = {0, 0, 0, 0};
				colorText[] = {1, 1, 1, 1};
				shadow = true;
				text = "";
			};
		
			class wantedList : Life_RscStructuredText 
			{
				idc = 23520;
				x = safeZoneX+0.01;
				y = safeZoneY+0.5;
				w = 0.3;
				h = 0.7;
				colorBackground[] = {0.5, 0.5, 0.5, 0.5};
				text = "";
			};
		};   
	};