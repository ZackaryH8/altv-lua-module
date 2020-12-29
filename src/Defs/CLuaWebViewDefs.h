#pragma once

#include <Main.h>

class CLuaWebViewDefs
{
public:
	static const char* ClassName;
	static void Init(lua_State* L);

private:
    static int CreateWebView(lua_State* L);
    static int Trigger(lua_State* L);
    static int Focus(lua_State* L);
    static int Unfocus(lua_State* L);
    static int IsFocused(lua_State* L);
    static int GetUrl(lua_State* L);
    static int SetUrl(lua_State* L);
    static int IsVisible(lua_State* L);
    static int SetVisible(lua_State* L);
    static int IsOverlay(lua_State* L);
    static int IsReady(lua_State* L);
};