#pragma once

#ifdef ALT_CLIENT_API
#include <Main.h>

namespace lua::Class
{
	class Native
	{
	public:
		static const char* ClassName;
		static void Init(lua_State* L);

	private:
		static int InvokeNative(lua_State* L);
	};
}
#endif