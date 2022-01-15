#include <Main.h>

#ifdef ALT_SERVER_API

REGISTER_LOCAL_EVENT(
	alt::CEvent::Type::PLAYER_BEFORE_CONNECT,
	beforePlayerConnect,
	[](LuaResourceImpl* resourceImpl, const alt::CEvent* ev) -> int
	{
		const alt::CPlayerBeforeConnectEvent* event = static_cast<const alt::CPlayerBeforeConnectEvent*>(ev);
		lua_State* L = resourceImpl->GetLuaState();

		const alt::ConnectionInfo& connectionInfo = event->GetConnectionInfo();
		lua_newtable(L);
		const int t = lua_gettop(L);

		lua_pushstring(L, connectionInfo.name);
		lua_setfield(L, t, "name");

		lua_pushstring(L, std::to_string(connectionInfo.socialId));
		lua_setfield(L, t, "socialID");

		lua_pushstring(L, std::to_string(connectionInfo.hwidHash));
		lua_setfield(L, t, "hwidHash");

		lua_pushstring(L, std::to_string(connectionInfo.hwidExHash));
		lua_setfield(L, t, "hwidExHash");

		lua_pushstring(L, connectionInfo.authToken);
		lua_setfield(L, t, "authToken");

		lua_pushboolean(L, connectionInfo.isDebug);
		lua_setfield(L, t, "isDebug");

		lua_pushstring(L, connectionInfo.branch);
		lua_setfield(L, t, "branch");

		lua_pushnumber(L, connectionInfo.build);
		lua_setfield(L, t, "build");

		lua_pushstring(L, connectionInfo.cdnUrl);
		lua_setfield(L, t, "cdnUrl");

		lua_pushnumber(L, connectionInfo.passwordHash);
		lua_setfield(L, t, "passwordHash");
		lua_pushstring(L, event->GetReason());

		return 2;
	}
);

REGISTER_LOCAL_EVENT(
	alt::CEvent::Type::PLAYER_CONNECT,
	playerConnect,
	[](LuaResourceImpl* resourceImpl, const alt::CEvent* ev) -> int
	{
		const alt::CPlayerConnectEvent* event = static_cast<const alt::CPlayerConnectEvent*>(ev);
		lua_State* L = resourceImpl->GetLuaState();

		lua_pushbaseobject(L, event->GetTarget().Get());

		return 1;
	}
);

REGISTER_LOCAL_EVENT(
	alt::CEvent::Type::PLAYER_DISCONNECT,
	playerDisconnect,
	[](LuaResourceImpl* resourceImpl, const alt::CEvent* ev) -> int
	{
		const alt::CPlayerDisconnectEvent* event = static_cast<const alt::CPlayerDisconnectEvent*>(ev);
		lua_State* L = resourceImpl->GetLuaState();

		lua_pushbaseobject(L, event->GetTarget().Get());
		lua_pushstring(L, event->GetReason().CStr());

		return 2;
	}
);

REGISTER_LOCAL_EVENT(
	alt::CEvent::Type::PLAYER_DAMAGE,
	playerDamage,
	[](LuaResourceImpl* resourceImpl, const alt::CEvent* ev) -> int
	{
		const alt::CPlayerDamageEvent* event = static_cast<const alt::CPlayerDamageEvent*>(ev);
		lua_State* L = resourceImpl->GetLuaState();

		lua_pushbaseobject(L, event->GetTarget().Get());

		if (event->GetAttacker())
			lua_pushbaseobject(L, event->GetAttacker().Get());
		else
			lua_pushnil(L);

		lua_pushnumber(L, event->GetWeapon());
		lua_pushnumber(L, event->GetHealthDamage());
		lua_pushnumber(L, event->GetArmourDamage());

		return 5;
	}
);

REGISTER_LOCAL_EVENT(
	alt::CEvent::Type::PLAYER_DEATH,
	playerDeath,
	[](LuaResourceImpl* resourceImpl, const alt::CEvent* ev) -> int
	{
		const alt::CPlayerDeathEvent* event = static_cast<const alt::CPlayerDeathEvent*>(ev);
		lua_State* L = resourceImpl->GetLuaState();

		lua_pushbaseobject(L, event->GetTarget().Get());

		if (event->GetKiller())
			lua_pushbaseobject(L, event->GetKiller().Get());
		else
			lua_pushnil(L);

		lua_pushnumber(L, event->GetWeapon());

		return 3;
	}
);

REGISTER_LOCAL_EVENT(
	alt::CEvent::Type::PLAYER_ENTER_VEHICLE,
	playerEnteredVehicle,
	[](LuaResourceImpl* resourceImpl, const alt::CEvent* ev) -> int
	{
		const alt::CPlayerEnterVehicleEvent* event = static_cast<const alt::CPlayerEnterVehicleEvent*>(ev);
		lua_State* L = resourceImpl->GetLuaState();

		lua_pushbaseobject(L, event->GetPlayer().Get());
		lua_pushbaseobject(L, event->GetTarget().Get());
		lua_pushnumber(L, event->GetSeat());

		return 3;
	}
);

REGISTER_LOCAL_EVENT(
	alt::CEvent::Type::PLAYER_ENTERING_VEHICLE,
	playerEnteringVehicle,
	[](LuaResourceImpl* resourceImpl, const alt::CEvent* ev) -> int
	{
		const alt::CPlayerEnteringVehicleEvent* event = static_cast<const alt::CPlayerEnteringVehicleEvent*>(ev);
		lua_State* L = resourceImpl->GetLuaState();

		lua_pushbaseobject(L, event->GetPlayer().Get());
		lua_pushbaseobject(L, event->GetTarget().Get());
		lua_pushnumber(L, event->GetSeat());

		return 3;
	}
);

REGISTER_LOCAL_EVENT(
	alt::CEvent::Type::PLAYER_LEAVE_VEHICLE,
	playerLeftVehicle,
	[](LuaResourceImpl* resourceImpl, const alt::CEvent* ev) -> int
	{
		const alt::CPlayerLeaveVehicleEvent* event = static_cast<const alt::CPlayerLeaveVehicleEvent*>(ev);
		lua_State* L = resourceImpl->GetLuaState();

		lua_pushbaseobject(L, event->GetPlayer().Get());
		lua_pushbaseobject(L, event->GetTarget().Get());
		lua_pushnumber(L, event->GetSeat());

		return 3;
	}
);

REGISTER_LOCAL_EVENT(
	alt::CEvent::Type::PLAYER_CHANGE_VEHICLE_SEAT,
	playerChangedVehicleSeat,
	[](LuaResourceImpl* resourceImpl, const alt::CEvent* ev) -> int
	{
		const alt::CPlayerChangeVehicleSeatEvent* event = static_cast<const alt::CPlayerChangeVehicleSeatEvent*>(ev);
		lua_State* L = resourceImpl->GetLuaState();

		lua_pushbaseobject(L, event->GetPlayer().Get());
		lua_pushbaseobject(L, event->GetTarget().Get());
		lua_pushnumber(L, event->GetNewSeat());
		lua_pushnumber(L, event->GetOldSeat());

		return 4;
	}
);

REGISTER_LOCAL_EVENT(
	alt::CEvent::Type::PLAYER_WEAPON_CHANGE,
	playerWeaponChange,
	[](LuaResourceImpl* resourceImpl, const alt::CEvent* ev) -> int
	{
		const alt::CPlayerWeaponChangeEvent* event = static_cast<const alt::CPlayerWeaponChangeEvent*>(ev);
		lua_State* L = resourceImpl->GetLuaState();

		lua_pushbaseobject(L, event->GetTarget().Get());
		lua_pushnumber(L, event->GetOldWeapon());
		lua_pushnumber(L, event->GetNewWeapon());

		return 3;
	}
);

#endif