/*
	Exile Server Manager
	www.esmbot.com
	© 2018 Exile Server Manager Team
	This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
	To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.

	Description:
		Handles a callback request from the DLL
*/

params ["_function", "_parameters"];

// Make sure the function is compiled
if (missionNameSpace getVariable [_function, ""] isEqualTo "") exitWith
{
	["fn_handleCallback", format["Function %1 called by ESM but it wasn't compiled", _function]] call ESM_fnc_log;
};

_parameters spawn (missionNamespace getVariable [_function, {}]);

true
