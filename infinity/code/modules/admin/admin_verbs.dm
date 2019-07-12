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
	/datum/admins/proc/mp_panel,
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

/datum/admins/proc/toggleobservers()
	set category = "Server"
	set desc="Players can't join as a ghost."
	set name="Toggle observers"
	if(!check_rights(R_SERVER))
		return

	config.observers_allowed = !config.observers_allowed

	if(GAME_STATE > RUNLEVEL_LOBBY)
		for(var/mob/new_player/player in GLOB.player_list)
			if(player.client && !player.client.banprisoned)
				player.new_player_panel()

	to_world("<B>Игроки [config.observers_allowed ? "отныне могут" : "больше не могут"] заходить за призраков из лобби.</b>")
	log_and_message_admins("toggled observers game entering [config.observers_allowed ? "" : "dis"]allowed.")
	SSstatistics.add_field_details("admin_verb","TOB") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/proc/cmd_toggle_admin_help()
	set name = "Toggle Admin Help"
	set category = "Server"
	if(!check_rights(R_SERVER))
		return

	config.ahelp_allowed = !config.ahelp_allowed
	log_admin("[key_name(src)] has turned admin help [config.ahelp_allowed ? "on" : "off"].")
	message_admins("[key_name_admin(src)] has turned admin help [config.ahelp_allowed ? "on" : "off"].", 0)
	SSstatistics.add_field_details("admin_verb","TAH") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/client/proc/observe_delay()
	set name = "Change Roundstart Observe Delay"
	set category = "Server"
	if(!check_rights(R_SERVER))
		return

	var/oldtime = config.observe_delay
	var/newtime = input("Set a new time. Its must be in MINUTES (not in seconds/byond tick). Set 0 to remove delay.", "Set Delay", oldtime) as num|null
	if(!newtime || newtime == oldtime) return

	var/message = newtime <= 0 ? "отключил(а) задержку дл&#255; наблюдателей" : "изменил(а) задержку дл&#255; наблюдателей с [oldtime] на [newtime] минут(ы)"
	log_and_message_admins("Администратор [key_name_admin(usr)] [message].")

	config.observe_delay = newtime
	SSstatistics.add_field_details("admin_verb","CROD") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/datum/admins/proc/intercom()
	set category = "Fun"
	set name = "Intercom Msg"
	set desc = "Send an intercom message, like an arrivals announcement."
	if(!check_rights(0))	return

	var/channel = input("Channel for message:","Channel", null) as null|anything in radiochannels

	if(channel) //They picked a channel
		var/sender = input("Name of sender (max 75):", "Announcement", "Announcement Computer") as null|text

		if(sender) //They put a sender
			sender = sanitize(sender, 75, extra = 0)
			var/message = input("Message content (max 500):", "Contents", "This is a test of the announcement system.") as null|message

			if(message) //They put a message
				message = sanitize(message, 500, extra = 0)
				GLOB.global_announcer.autosay("[message]", "[sender]", "[channel == "Common" ? null : channel]") //Common is a weird case, as it's not a "channel", it's just talking into a radio without a channel set.
				log_admin("Intercom: [key_name(usr)] : [sender]:[message]")

	SSstatistics.add_field("admin_verb","IN") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

/datum/admins/proc/intercom_convo()
	set category = "Fun"
	set name = "Intercom Convo"
	set desc = "Send an intercom conversation, like several uses of the Intercom Msg verb."
	set waitfor = FALSE //Why bother? We have some sleeps. You can leave tho!
	if(!check_rights(0))	return

	var/channel = input("Channel for message:","Channel", null) as null|anything in radiochannels

	if(!channel) //They picked a channel
		return

	to_chat(usr,"<span class='notice'><B>Intercom Convo Directions</B><br>Start the conversation with the sender, a pipe (|), and then the message on one line. Then hit enter to \
		add another line, and type a (whole) number of seconds to pause between that message, and the next message, then repeat the message syntax up to 20 times. For example:<br>\
		--- --- ---<br>\
		Some Guy|Hello guys, what's up?<br>\
		5<br>\
		Other Guy|Hey, good to see you.<br>\
		5<br>\
		Some Guy|Yeah, you too.<br>\
		--- --- ---<br>\
		The above will result in those messages playing, with a 5 second gap between each. Maximum of 20 messages allowed.</span>")

	var/list/decomposed
	var/message = input(usr,"See your chat box for instructions. Keep a copy elsewhere in case it is rejected when you click OK.", "Input Conversation", "") as null|message

	if(!message)
		return

	//Split on pipe or \n
	decomposed = splittext(message,regex("\\||$","m"))
	decomposed += "0" //Tack on a final 0 sleep to make 3-per-message evenly

	//Time to find how they screwed up.
	//Wasn't the right length
	if((decomposed.len) % 3) //+1 to accomidate the lack of a wait time for the last message
		to_chat(usr,"<span class='warning'>You passed [decomposed.len] segments (senders+messages+pauses). You must pass a multiple of 3, minus 1 (no pause after the last message). That means a sender and message on every other line (starting on the first), separated by a pipe character (|), and a number every other line that is a pause in seconds.</span>")
		return

	//Too long a conversation
	if((decomposed.len / 3) > 20)
		to_chat(usr,"<span class='warning'>This conversation is too long! 20 messages maximum, please.</span>")
		return

	//Missed some sleeps, or sanitized to nothing.
	for(var/i = 1; i < decomposed.len; i++)

		//Sanitize sender
		var/clean_sender = sanitize(decomposed[i])
		if(!clean_sender)
			to_chat(usr,"<span class='warning'>One part of your conversation was not able to be sanitized. It was the sender of the [(i+2)/3]\th message.</span>")
			return
		decomposed[i] = clean_sender

		//Sanitize message
		var/clean_message = sanitize(decomposed[++i])
		if(!clean_message)
			to_chat(usr,"<span class='warning'>One part of your conversation was not able to be sanitized. It was the body of the [(i+2)/3]\th message.</span>")
			return
		decomposed[i] = clean_message

		//Sanitize wait time
		var/clean_time = text2num(decomposed[++i])
		if(!isnum(clean_time))
			to_chat(usr,"<span class='warning'>One part of your conversation was not able to be sanitized. It was the wait time after the [(i+2)/3]\th message.</span>")
			return
		if(clean_time > 60)
			to_chat(usr,"<span class='warning'>Max 60 second wait time between messages for sanity's sake please.</span>")
			return
		decomposed[i] = clean_time

	log_admin("Intercom convo started by: [key_name(usr)] : [sanitize(message)]")
	SSstatistics.add_field("admin_verb","IN") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!

	//Sanitized AND we still have a chance to send it? Wow!
	if(LAZYLEN(decomposed))
		for(var/i = 1; i < decomposed.len; i++)
			var/this_sender = decomposed[i]
			var/this_message = decomposed[++i]
			var/this_wait = decomposed[++i]
			GLOB.global_announcer.autosay("[this_message]", "[this_sender]", "[channel == "Common" ? null : channel]") //Common is a weird case, as it's not a "channel", it's just talking into a radio without a channel set.
			sleep(this_wait SECONDS)

/datum/admins/proc/mp_panel()
	set category = "Fun"
	set name = "MP Panel"
	set desc = "Lists all current music players and control it."

	if(!check_rights(R_ADMIN|R_FUN, 0, usr))
		return

	var/list/dat = list("<div align='center'><h1>Music Player Control Panel</h1><br>")

	dat += "<b>Current musuc players in world ([GLOB.mp_list.len]):</b></div><br>"
	dat += "<hr>"

	if(GLOB.mp_list.len == 0)
		dat += "<div class='statusDisplay'><center>At the moment there are no devices in this world session.</center></div>"
	else
		for(var/a in GLOB.mp_list)
			var/obj/item/music_player/p = a
			dat += "<div class='statusDisplay'>"
			dat += "Music Player #[p.serial_number] : <a href='?_src_=holder;mp_play=\ref[p]'>[p.mode ? "<font color=cc5555>Stop</font>" : "<font color=55cc55>Play</font>"]</a> | "
			dat += "<a href='?_src_=holder;mp_volume=\ref[p]'>Volume</a> | "
			dat += "<a href='?_src_=holder;adminplayerobservefollow=\ref[p]'>Current location</a> | "
			dat += "<a href='?_src_=vars;Vars=\ref[p]'>VV</a> | "
			dat += "<a href='?_src_=holder;mp_explode=\ref[p]'><font color=cc5555>\[X\]</font></a><br>"
			dat += "</div>"

	var/datum/browser/popup = new(usr, "mp_panel",, 465, 325, src)
	popup.set_content(jointext(dat, null))
	popup.open()

	SSstatistics.add_field("admin_verb","MPP") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!
