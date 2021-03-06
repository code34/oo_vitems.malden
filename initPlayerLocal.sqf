﻿	/*
	Author: code34 nicolas_boiteux@yahoo.fr
	Copyright (C) 2018 Nicolas BOITEUX

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	
	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>. 
	*/

	call compile preprocessFileLineNumbers "vitems\oo_container.sqf";
	call compile preprocessFileLineNumbers "vitems\oo_randomstuff.sqf";
	call compile preprocessFileLineNumbers "gui\oo_vitems.sqf";
	call compile preprocessFileLineNumbers "gui\oo_UI_loading.sqf";

/*	_inventory = ["new", netId player] call OO_CONTAINER;
	["setProperties", [name player,5,10]] call _inventory;*/

	player addEventHandler ["InventoryOpened", {execVM "actions\listinventory.sqf";true;}];
	player addEventHandler ["InventoryClosed", {player addEventHandler ["InventoryOpened", {execVM "actions\listinventory.sqf";true;}];}];

/*	sleep 2;

	while { true } do {
		_modelInfo = getModelInfo cursorObject;
		hint format ["hello: %2", _modelInfo, netId cursorObject, typeOf cursorObject];
		sleep 0.5;
	};*/