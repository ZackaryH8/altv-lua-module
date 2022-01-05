#pragma once

#include <Main.h>

#ifdef ALT_SERVER_API
namespace lua::Class
{
	class VoiceChannel
	{
	public:
		static const char* ClassName;
		static void Init(lua_State* L);

	private:
		static int Create(lua_State* L);

		static int IsSpatial(lua_State* L);
		static int GetMaxDistance(lua_State* L);

		static int HasPlayer(lua_State* L);
		static int AddPlayer(lua_State* L);
		static int RemovePlayer(lua_State* L);

		static int IsPlayerMuted(lua_State* L);
		static int MutePlayer(lua_State* L);
		static int UnmutePlayer(lua_State* L);
	};
}
#endif