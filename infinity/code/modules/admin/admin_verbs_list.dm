var/list/admin_verbs_default = list(
	/client/proc/deadmin_self,			//destroys our own admin datum so we can play as a regular player,
	/client/proc/hide_verbs,			//hides all our adminverbs,
	/client/proc/getserverlog,			//allows us to fetch server logs (diary) for other days,
	/client/proc/hide_most_verbs,		//hides all our hideable adminverbs,
	/client/proc/cmd_check_new_players,
	/client/proc/cmd_staff_say,
	)

var/list/admin_verbs_admin = list(
	/datum/admins/proc/show_player_panel,	//shows an interface for individual players, with various links (links require additional flags,
	/client/proc/player_panel,
	/client/proc/player_panel_new,		//shows an interface for all players, with links to various panels,
	/client/proc/invisimin,				//allows our mob to go invisible/visible,
	/datum/admins/proc/show_game_mode,  //Configuration window for the current game mode.,
	/datum/admins/proc/force_mode_latespawn, //Force the mode to try a latespawn proc,
	/datum/admins/proc/force_antag_latespawn, //Force a specific template to try a latespawn proc,
	/datum/admins/proc/toggleenter,		//toggles whether people can join the current game,
	/datum/admins/proc/toggleguests,	//toggles whether guests can join the current game,
	/datum/admins/proc/toggleobservers,
	/datum/admins/proc/announce,		//priority announce something to all clients.,
	/client/proc/admin_ghost,			//allows us to ghost/reenter body at will,
	/client/proc/toggle_view_range,		//changes how far we can see,
	/datum/admins/proc/view_txt_log,	//shows the server log (diary) for today,
	/datum/admins/proc/view_atk_log,	//shows the server combat-log, doesn't do anything presently,
	/client/proc/cmd_admin_pm_context,	//right-click adminPM interface,
	/client/proc/cmd_admin_pm_panel,	//admin-pm list,
	/client/proc/cmd_admin_delete,		//delete an instance/object/mob/etc,
	/client/proc/cmd_admin_check_contents,	//displays the contents of an instance,
	/datum/admins/proc/access_news_network,	//allows access of newscasters,
	/client/proc/giveruntimelog,		//allows us to give access to runtime logs to somebody,
	/client/proc/jumptocoord,			//we ghost and jump to a coordinate,
	/client/proc/Getmob,				//teleports a mob to our location,
	/client/proc/Getkey,				//teleports a mob with a certain ckey to our location,
	/client/proc/Jump,
	/client/proc/jumptokey,				//allows us to jump to the location of a mob with a certain ckey,
	/client/proc/jumptomob,				//allows us to jump to a specific mob,
	/client/proc/jumptoturf,			//allows us to jump to a specific turf,
	/client/proc/admin_call_shuttle,	//allows us to call the emergency shuttle,
	/client/proc/admin_cancel_shuttle,	//allows us to cancel the emergency shuttle, sending it back to centcomm,
	/client/proc/cmd_admin_direct_narrate,	//send text directly to a player with no padding. Useful for narratives and fluff-text,
	/client/proc/cmd_admin_visible_narrate,
	/client/proc/cmd_admin_audible_narrate,
	/client/proc/cmd_admin_local_narrate,
	/client/proc/cmd_admin_world_narrate,	//sends text to all players with no padding,
	/client/proc/cmd_admin_create_centcom_report,
	/client/proc/check_ai_laws,			//shows AI and borg laws,
	/client/proc/rename_silicon,		//properly renames silicons,
	/client/proc/manage_silicon_laws,	// Allows viewing and editing silicon laws. ,
	/client/proc/check_antagonists,
	/client/proc/admin_memo,			//admin memo system. show/delete/write. +SERVER needed to delete admin memos of others,
	/client/proc/dsay,					//talk in deadchat using our ckey,
	/datum/admins/proc/toggleooc,		//toggles ooc on/off for everyone,
	/datum/admins/proc/toggleaooc,		//toggles aooc on/off for everyone,
	/datum/admins/proc/togglelooc,		//toggles looc on/off for everyone,
	/datum/admins/proc/toggleoocdead,	//toggles ooc on/off for everyone who is dead,
	/datum/admins/proc/toggledsay,		//toggles dsay on/off for everyone,
	/client/proc/game_panel,			//game panel, allows to change game-mode etc,
	/client/proc/cmd_admin_say,			//admin-only ooc chat,
	/datum/admins/proc/togglehubvisibility, //toggles visibility on the BYOND Hub,
	/datum/admins/proc/PlayerNotes,
	/datum/admins/proc/show_player_info,
	/client/proc/free_slot_submap,
	/client/proc/free_slot_crew,			//frees slot for chosen job,
	/client/proc/cmd_admin_change_custom_event,
	/client/proc/cmd_admin_rejuvenate,
	/client/proc/toggleghostwriters,
	/client/proc/toggledrones,
	/client/proc/check_customitem_activity,
	/client/proc/man_up,
	/client/proc/global_man_up,
	/client/proc/response_team, // Response Teams admin verb,
	/client/proc/toggle_antagHUD_use,
	/client/proc/toggle_antagHUD_restrictions,
	/client/proc/allow_character_respawn,    // Allows a ghost to respawn ,
	/client/proc/event_manager_panel,
	/client/proc/empty_ai_core_toggle_latejoin,
	/client/proc/empty_ai_core_toggle_latejoin,
	/client/proc/aooc,
	/client/proc/change_human_appearance_admin,	// Allows an admin to change the basic appearance of human-based mobs ,
	/client/proc/change_human_appearance_self,	// Allows the human-based mob itself change its basic appearance ,
	/client/proc/change_security_level,
	/client/proc/view_chemical_reaction_logs,
	/client/proc/makePAI,
	/client/proc/fixatmos,
	/client/proc/list_traders,
	/client/proc/add_trader,
	/client/proc/remove_trader,
	/datum/admins/proc/sendFax,
	/client/proc/secrets,
	/client/proc/debug_variables,		//allows us to -see- the variables of any instance in the game. +VAREDIT needed to modify,
	/client/proc/debug_global_variables,
	/client/proc/reestablish_db_connection,
	/client/proc/investigate_show,
	/datum/admins/proc/show_skills,
	/datum/admins/proc/paralyze_mob
	)
var/list/admin_verbs_ban = list(
	/client/proc/unban_panel,
	/client/proc/jobbans,
	/client/proc/DB_ban_panel,
	/client/proc/stickybanpanel
	)
var/list/admin_verbs_sounds = list(
	/client/proc/play_local_sound,
	/client/proc/play_sound,
	/client/proc/play_server_sound
	)

var/list/admin_verbs_fun = list(
	/client/proc/object_talk,
	/client/proc/drop_bomb,
	/client/proc/everyone_random,
	/client/proc/cinematic,
	/datum/admins/proc/toggle_space_ninja,
	/client/proc/cmd_admin_add_freeform_ai_law,
	/client/proc/cmd_admin_add_random_ai_law,
	/client/proc/cmd_admin_dress,
	/client/proc/toggle_random_events,
	/client/proc/editappear,
	/client/proc/roll_dices,
	/datum/admins/proc/call_supply_drop,
	/datum/admins/proc/call_drop_pod,
	/client/proc/create_dungeon,
	/datum/admins/proc/ai_hologram_set,
	/datum/admins/proc/intercom,		//send a fake intercom message, like an arrivals announcement,
	/datum/admins/proc/intercom_convo,	//send a fake intercom conversation, like an ATC exchange,
	/datum/admins/proc/pmp_control_panel,
	/proc/possess,
	/proc/release
	)

var/list/admin_verbs_spawn = list(
	/datum/admins/proc/spawn_fruit,
	/datum/admins/proc/spawn_fluid_verb,
	/datum/admins/proc/spawn_custom_item,
	/datum/admins/proc/check_custom_items,
	/datum/admins/proc/spawn_plant,
	/datum/admins/proc/spawn_atom,		// allows us to spawn instances,
	/client/proc/game_panel,
	/client/proc/respawn_character,
	/client/proc/respawn_as_self,
	/client/proc/virus2_editor,
	/client/proc/spawn_chemdisp_cartridge,
	/datum/admins/proc/mass_debug_closet_icons
	)
var/list/admin_verbs_server = list(
	/datum/admins/proc/capture_map_part,
	/client/proc/Set_Holiday,
	/datum/admins/proc/startnow,
	/datum/admins/proc/endnow,
	/datum/admins/proc/restart,
	/datum/admins/proc/delay,
	/datum/admins/proc/toggleaban,
	/client/proc/toggle_log_hrefs,
	/datum/admins/proc/immreboot,
	/client/proc/everyone_random,
	/datum/admins/proc/toggleAI,
	/client/proc/cmd_admin_delete,		// delete an instance/object/mob/etc,
	/client/proc/cmd_debug_del_all,
	/datum/admins/proc/adrev,
	/datum/admins/proc/adspawn,
	/datum/admins/proc/adjump,
	/datum/admins/proc/toggle_space_ninja,
	/client/proc/toggle_random_events,
	/client/proc/check_customitem_activity,
	/client/proc/nanomapgen_DumpImage,
	/client/proc/cmd_toggle_admin_help,
	/client/proc/observe_delay,
	/client/proc/update_server
	)
var/list/admin_verbs_debug = list(
	/client/proc/getruntimelog, // allows us to access runtime logs to somebody,
	/datum/admins/proc/jump_to_fluid_source,
	/datum/admins/proc/jump_to_fluid_active,
	/client/proc/cmd_admin_list_open_jobs,
	/client/proc/Debug2,
	/client/proc/ZASSettings,
	/client/proc/cmd_debug_make_powernets,
	/client/proc/debug_controller,
	/client/proc/debug_antagonist_template,
	/client/proc/cmd_debug_mob_lists,
	/client/proc/cmd_admin_delete,
	/client/proc/cmd_debug_del_all,
	/client/proc/air_report,
	/client/proc/reload_admins,
	/client/proc/restart_controller,
	/client/proc/print_random_map,
	/client/proc/create_random_map,
	/client/proc/apply_random_map,
	/client/proc/overlay_random_map,
	/client/proc/delete_random_map,
	/datum/admins/proc/map_template_load,
	/datum/admins/proc/map_template_load_new_z,
	/datum/admins/proc/map_template_upload,
	/client/proc/enable_debug_verbs,
	/client/proc/callproc,
	/client/proc/callproc_target,
	/client/proc/SDQL2_query,
	/client/proc/Jump,
	/client/proc/jumptomob,
	/client/proc/jumptocoord,
	/client/proc/dsay,
	/datum/admins/proc/run_unit_test,
	/turf/proc/view_chunk,
	/turf/proc/update_chunk,
	/datum/admins/proc/capture_map,
	/datum/admins/proc/view_runtimes,
	/client/proc/watched_variables,
	/client/proc/secrets,
	/client/proc/debug_variables,		//allows us to -see- the variables of any instance in the game. +VAREDIT needed to modify,
	/client/proc/debug_global_variables,
	/client/proc/cmd_analyse_health_context,
	/client/proc/cmd_analyse_health_panel,
	/client/proc/reestablish_db_connection,
	/client/proc/visualpower,
	/client/proc/visualpower_remove
	)

var/list/admin_verbs_paranoid_debug = list(
	/client/proc/callproc,
	/client/proc/callproc_target,
	/client/proc/debug_controller
	)

var/list/admin_verbs_possess = list(
	/proc/possess,
	/proc/release
	)
var/list/admin_verbs_permissions = list(
	/client/proc/edit_admin_permissions,
	/client/proc/colorooc
	)
var/list/admin_verbs_rejuv = list(
	/client/proc/respawn_character
	)
var/list/admin_verbs_judge = list(
	/datum/admins/proc/PlayerNotes
	)

//verbs which can be hidden - needs work
var/list/admin_verbs_hideable = list(
	/client/proc/deadmin_self,
	/datum/admins/proc/show_traitor_panel,
	/datum/admins/proc/toggleenter,
	/datum/admins/proc/toggleguests,
	/datum/admins/proc/toggleobservers,
	/datum/admins/proc/announce,
	/client/proc/colorooc,
	/client/proc/admin_ghost,
	/client/proc/toggle_view_range,
	/datum/admins/proc/view_txt_log,
	/datum/admins/proc/view_atk_log,
	/client/proc/cmd_admin_check_contents,
	/datum/admins/proc/access_news_network,
	/client/proc/admin_call_shuttle,
	/client/proc/admin_cancel_shuttle,
	/client/proc/cmd_admin_direct_narrate,
	/client/proc/cmd_admin_visible_narrate,
	/client/proc/cmd_admin_audible_narrate,
	/client/proc/cmd_admin_local_narrate,
	/client/proc/cmd_admin_world_narrate,
	/client/proc/play_local_sound,
	/client/proc/play_sound,
	/client/proc/play_server_sound,
	/client/proc/object_talk,
	/client/proc/cmd_admin_gib_self,
	/client/proc/cinematic,
	/datum/admins/proc/toggle_space_ninja,
	/client/proc/cmd_admin_add_freeform_ai_law,
	/client/proc/cmd_admin_add_random_ai_law,
	/client/proc/cmd_admin_create_centcom_report,
	/client/proc/toggle_random_events,
	/client/proc/cmd_admin_add_random_ai_law,
	/client/proc/Set_Holiday,
	/datum/admins/proc/startnow,
	/datum/admins/proc/restart,
	/datum/admins/proc/delay,
	/datum/admins/proc/toggleaban,
	/client/proc/toggle_log_hrefs,
	/datum/admins/proc/immreboot,
	/client/proc/everyone_random,
	/datum/admins/proc/toggleAI,
	/datum/admins/proc/adrev,
	/datum/admins/proc/adspawn,
	/datum/admins/proc/adjump,
	/client/proc/restart_controller,
	/client/proc/cmd_admin_list_open_jobs,
	/client/proc/callproc,
	/client/proc/callproc_target,
	/client/proc/Debug2,
	/client/proc/reload_admins,
	/client/proc/cmd_debug_make_powernets,
	/client/proc/debug_controller,
	/client/proc/cmd_debug_mob_lists,
	/client/proc/cmd_debug_del_all,
	/client/proc/air_report,
	/client/proc/enable_debug_verbs,
	/client/proc/roll_dices,
	/proc/possess,
	/proc/release,
	/datum/admins/proc/show_skills,
	/datum/admins/proc/paralyze_mob
	)
var/list/admin_verbs_mod = list(
	/client/proc/cmd_admin_pm_context,
	/client/proc/cmd_admin_pm_panel,
	/client/proc/debug_variables,
	/client/proc/debug_global_variables,
	/datum/admins/proc/PlayerNotes,
	/client/proc/admin_ghost,
	/datum/admins/proc/show_player_info,
	/client/proc/player_panel_new,
	/client/proc/dsay,
	/datum/admins/proc/show_player_panel,
	/client/proc/check_antagonists,
	/client/proc/cmd_admin_direct_narrate,
	/client/proc/aooc,
	/datum/admins/proc/sendFax,
	/datum/admins/proc/view_persistent_data
)

var/list/admin_verbs_mentor = list(
	/client/proc/cmd_admin_pm_context,
	/client/proc/cmd_admin_pm_panel,
	/datum/admins/proc/PlayerNotes,
	/client/proc/admin_ghost,
	/datum/admins/proc/show_player_info
)

/client/proc/add_admin_verbs()
	if(holder)
		verbs += admin_verbs_default
		if(holder.rights & R_BUILDMODE)		verbs += /client/proc/togglebuildmodeself
		if(holder.rights & R_ADMIN)			verbs += admin_verbs_admin
		if(holder.rights & R_BAN)			verbs += admin_verbs_ban
		if(holder.rights & R_FUN)			verbs += admin_verbs_fun
		if(holder.rights & R_SERVER)		verbs += admin_verbs_server
		if(holder.rights & R_DEBUG)
			verbs += admin_verbs_debug
			if(config.debugparanoid && !(holder.rights & R_ADMIN))
				verbs.Remove(admin_verbs_paranoid_debug)			//Right now it's just callproc but we can easily add others later on.
		if(holder.rights & R_JUDGE)	     	verbs += admin_verbs_judge
		if(holder.rights & R_PERMISSIONS)	verbs += admin_verbs_permissions
		if(holder.rights & R_STEALTH)		verbs += /client/proc/stealth
		if(holder.rights & R_REJUVINATE)	verbs += admin_verbs_rejuv
		if(holder.rights & R_SOUNDS)		verbs += admin_verbs_sounds
		if(holder.rights & R_SPAWN)			verbs += admin_verbs_spawn
		if(holder.rights & R_MOD)			verbs += admin_verbs_mod
		if(holder.rights & R_MENTOR)		verbs += admin_verbs_mentor

/client/proc/remove_admin_verbs()
	verbs.Remove(
		admin_verbs_default,
		/client/proc/togglebuildmodeself,
		admin_verbs_admin,
		admin_verbs_ban,
		admin_verbs_fun,
		admin_verbs_server,
		admin_verbs_debug,
		admin_verbs_possess,
		admin_verbs_permissions,
		/client/proc/stealth,
		admin_verbs_rejuv,
		admin_verbs_sounds,
		admin_verbs_spawn,
		debug_verbs
		)
