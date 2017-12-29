
#include <amxmodx>
#include <fakemeta>
#include <hamsandwich>
#include <fun>

#define PLUGIN "Longjump Spawn"
#define AUTHOR "r00kie"
#define VERSION "0.2"

public plugin_init()
{
	register_plugin(PLUGIN, VERSION, AUTHOR)
	register_cvar(PLUGIN, VERSION, FCVAR_SPONLY | FCVAR_SERVER)

	RegisterHam(Ham_Spawn,  "player", "OnPlayerSpawn", 1)
}

public OnPlayerSpawn(id)
{
	if (is_user_alive(id))
    {
		give_item(id, "item_longjump" );
    }
}

public client_putinserver(id)
{
    if (is_user_alive(id))
    {
        give_item(id, "item_longjump" );
    }
}
