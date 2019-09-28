/datum/computer_file/program/hydra
	//filetype = "SVN"
	filename = "hydra"
	filedesc = "Hydra (2307 Year Release)"
	extended_desc = "A hacking, open source project, to modificate it you need DAIS Text 3 or RunnerStudio 7 with anaconda language syntax and compile packet and SVN systems."

	program_icon_state = "entertainment"
	program_key_state = "tech_key"
	program_menu_icon = "hydra"

	nanomodule_path = /datum/nano_module/hydra
	category = PROG_UTIL
	requires_ntnet = 0
	available_on_ntnet = 0
	available_on_syndinet = 1
	size = 20
	var/is1launch = 0
//	var/operator_skill = SKILL_MIN

/datum/nano_module/hydra
	name = "Hydra 2307.07.19 Release<br>(SHA: a24dfsa513af35fako53j2asf3)"
	var/list/docking_controllers = list() //list of tags

/datum/computer_file/program/hydra/run_program()
	. = ..()
	if(NM)
		var/datum/nano_module/hydra/NMD = NM
		NMD.refresh_docks()

/datum/nano_module/hydra/proc/refresh_docks()
	var/atom/movable/AM = nano_host()
	if(!istype(AM))
		return
	docking_controllers.Cut()
	var/list/zlevels = GetConnectedZlevels(AM.z)
	for(var/obj/machinery/embedded_controller/radio/airlock/docking_port/D in SSmachines.machinery)
		if(D.z in zlevels)
			var/shuttleside = 0
			for(var/sname in SSshuttle.shuttles) //do not touch shuttle-side ones
				var/datum/shuttle/autodock/S = SSshuttle.shuttles[sname]
				if(istype(S) && S.shuttle_docking_controller)
					if(!S.shuttle_docking_controller.is_admin_dock)
						shuttleside = 1
						break
			if(shuttleside)
				continue
			docking_controllers += D.program.id_tag

/datum/nano_module/hydra/ui_interact(mob/user, ui_key = "main", datum/nanoui/ui = null, force_open = 1, state = GLOB.default_state)
	var/list/data = host.initial_data()
	var/list/docks = list()
	for(var/docktag in docking_controllers)
		var/datum/computer/file/embedded_program/docking/P = SSshuttle.docking_registry[docktag]
		if(P)
			var/docking_attempt = P.tag_target && !P.dock_state
			var/docked = P.tag_target && (P.dock_state == STATE_DOCKED)
			docks.Add(list(list(
				"tag"				=	P.id_tag,
				"location"			=	P.get_name(),
				"status"			=	capitalize(P.get_docking_status()),
				"docking_attempt"	=	docking_attempt,
				"docked"			=	docked,
				"codes"				=	P.docking_codes ? P.docking_codes : "Unset"
				)))
	data["docks"] = docks
	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "hydra.tmpl", name, 600, 450, state = state)
		ui.set_auto_update(1)
		ui.set_initial_data(data)
		ui.open()

/datum/nano_module/hydra/Topic(href, href_list, state)
	if(..())
		return 1