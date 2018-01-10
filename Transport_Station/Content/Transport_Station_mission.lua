mission = {

-- Mission info
	startTime = {2009, 04, 27, 00, 13, 00},

-- Character definitions:
	characters = {
		joe = {
			displayName = "Joe Harman",
			internalName = "Joe",
			characterType = "player",
			prefab = "player",
			spawnpoint = "PlayerSpawn",
		},
		smedley = {
			displayName = "Smedley Butler",
			internalName = "Smedley",
			characterType = "virtual",
		},
		terrence = {
			displayName = "Terrence Stuart",
			internalName = "Terrence",
			characterType = "virtual",
		},
		guard01 = {
			displayName = "THOMAS TEMPLATE",
			internalName = "THOMAS",
			characterType = "enemy",
			prefab = "bigGuard",
			profile  = "GuardTemplate.lua",
			spawnpoint = "NewSpawn",
			patrolroute = {
				points = {
					"PatrolPoint_0-004",
					"PatrolPoint_0-005",
					"PatrolPoint_0-006",
					"PatrolPoint_0-007",
				},
				cyclic = false,
		},
	},
		guard03 = {
			displayName = "El Joe",
			internalName = "Ejoe",
			characterType = "enemy",
			prefab = "bigGuard",
			profile  = "GuardTemplate.lua",
			spawnpoint = "GuardSpawn3",
			patrolroute = {
				points = {
					"PatrolPoint_0-008",
					"PatrolPoint_0-010",
					"PatrolPoint_0-011",
					"PatrolPoint_0-012",
				},
				cyclic = false,
		},
	},
		guard04 = {
			displayName = "Super Bob",
			internalName = "Suprbob",
			characterType = "enemy",
			prefab = "bigGuard",
			profile  = "GuardTemplate.lua",
			spawnpoint = "GuardSpawn2",
			patrolroute = {
				points = {
					"PatrolPoint_0-013",
					"PatrolPoint_0-014",
				},
				cyclic = false,
			},
		},

		guard02 = {
			displayName = "Alan",
			internalName = "Alan",
			characterType = "enemy",
			prefab = "bigGuard",
			profile  = "GuardTemplate.lua",
			spawnpoint = "GuardSpawn4",
			patrolroute = {
				points = {
					"PatrolPoint_0-001",
					"PatrolPoint_0-002",
					"PatrolPoint_0-003",
				},
				cyclic = false,
			},
		},
	},

-- Inventory items:
	items = {

		USBDongle = {
			internalName = "USBDongle",
			displayName = "usb",
			description = "This is a usb.. or is it ?....nope definetly a usb",
			uiSpriteName = "Common/Items/Icons/USBDongleIcon.png",
		},

		meshdevice = {
			internalName = "meshnet",
			displayName = "MeshNet",
			description = "Use this device to establish a mesh network",
			uiSpriteName = "Common/Items/Icons/MeshNodeIcon.png",
		},

		prototype = {
			internalName = "prototype",
			displayName = "prototype",
			description = "a prototype",
			uiSpriteName = "Common/Items/Icons/MeshNodeIcon.png",
		},
		-- usbkey = {
		-- 	internalName = "USBDongle",
		-- 	displayName = "USB dongle",
		-- 	description = "Modified USB Bluetooth dongle given to you by the hackers",
		-- 	--[[This isn't really used, The UI uses internalName as class instead. Should change it to use image file name from this field.]]--
		-- 	uiSpriteName = "usbdongle.png",
		-- },
	},

--[[ Data files:
Available data types: generic, text, SMS, encrypted, audio, video, location, key, UUID
Table key is used as the internalName value on Unity side.
]]--
	data = {
		PlayerPGPKey = {
			internalName = "PlayerPGPKey",
			name = "Personal PGP encryption key",
			immutable = true,
			dataType = 7,
			creatorName = "Player",
			dataString = "PGP Fingerprint: 1d7d ef54 7a63 5756 63a7 cf14 fbd8 775c c39d 4e51",
			description = "AES 256-bit",
			dataColor = {0.0, 0.6, 1.0, 0.3},
		},
		Documents = {
			internalName ="SuperDuperPlans",
			name = "plans_data_name",
			dataType = 3,
			creatorName = "******",
			encryptionKey ="Allmightykey",
			encrypted = true,
			dataString ="plans_data_dataString",
			description = "text/plain,500GB",
			dataColor = {0.0,0.6,1.0,0.3},
		},

		UnknownText = {
			internalName = "Unknown",
			name = "SMS",
			dataType = 2 ,
			creatorName = "Unknown",
			dataString = "Hello world",
			description = "text/SMS",
			dataColor = {1.0,0.5,0.0,1.0},
		}

	},

-- Networks:
--[[ types: 0 = mobile, 1 = WiFi, 2 = mesh ]]--
	networks = {
		Semaeopus4G = {
			name = "Semaeopus4G",
			networkType = 0,
			allowPlayerDisconnect = false,
			userAccessKey = "user",
			adminAccessKey = "admin",
			rootAccessKey = "root",
		},
		ApostleWiFi = {
			name = "ApostleWiFi",
			networkType = 1,
			allowPlayerDisconnect = true,
			userAccessKey = "apostleuser",
			adminAccessKey = "apostlesecurity",
			rootAccessKey = "apostleroot",
		},
	},

-- Mission objectives:
	objectives = {

		enterbuilding = {
			name = "thestation_obj_enterbuilding_name",
			description = "thestation_obj_enterbuilding_desc",
			keyObjective = true,
			messages = {
				"thestation_obj_enterbuilding_msg_1",
			},
			onStart = function()
				print("Started objective 'enterbuilding'")
				Conversation.StartScript("Content/Conversations/alleyConversation.lua", mission.objectives.enterbuilding)
			end,
			onCompleted = function()
				print("Completed objective 'enterbuilding'")

			end,
	},
	findthekeycard = {
		name = "thestation_obj_findthekeycard_name",
		description = "thestation_obj_findthekeycard_desc",
		keyObjective = true,
		messages = {
			"thestation_obj_findthekeycard_msg_1",
		},
		onStart = function()
			Conversation.StartScript("Content/Conversations/findthekeycard.lua",mission.objectives.findthekeycard)
			print("Started objective 'find the laptop'")
		end,
								},



	findtheLaptop = {
		name = "thestation_obj_findtheLaptop_name",
		description = "thestation_obj_findtheLaptop_desc",
		keyObjective = true,
		messages = {
			"thestation_obj_findtheLaptop_msg_1",
		},
		onStart = function()
			Conversation.StartScript("Content/Conversations/findtheLaptop.lua",mission.objectives.findtheLaptop)
			print("Started objective 'find the laptop'")
		end,
								},

		findthecarriage = {
		name = "thestation_obj_findthecarriage_name",
		description = "thestation_obj_findthecarriage_desc",
		keyObjective = true,
		messages = {
										"thestation_obj_findthecarriage_msg_1",
								},
		onStart = function()

										Conversation.StartScript("Content/Conversations/findthecarriage.lua", mission.objectives.findthecarriage)
									end,
										},

		grabthedevice = {
		name = "thestation_obj_grabthedevice_name",
		description = "thestation_obj_grabthedevice_desc",
		keyObjective = true,
		messages = {
										"thestation_obj_grabthedevice_msg_1",
		},
										onStart = function()
																		Conversation.StartScript("Content/Conversations/grabthedevice.lua", mission.objectives.grabthedevice)
																	end,
																		},
				},

	devices = {
		keycard_01 = {
			internalName = "keycard_01",
			dataColor = {1.0, 0.5, 0.0, 1.0 },
		},
		--ChangeOutfit = {
		--	internalName = "ChangeOutfit",
		--	dataColor = {1.0, 0.5, 0.0, 1.0 },
--		},
		Sodamachine = {
			internalName = "Sodamachine",
			script= "SodaMachine.lua",
		},
		Laptop = {
			internalName = "Laptop",
			script= "Content/Devices/Laptop.lua",
		},

		 lostphone = {
			internalName = "lostphone",
			dataColor = {1.0, 0.5, 0.0, 1.0 },
		},
		CarriageComputer1=
		{
			internalName = "CarriageComputer1",
			script="Content/Devices/CarriageComputer1.lua"

		},
		CarriageComputer2=
		{
			internalName = "CarriageComputer2",
			script="Content/Devices/CarriageComputer2.lua"

		},
		CarriageComputer3=
		{
		internalName = "CarriageComputer3",
		script="Content/Devices/CarriageComputer3.lua"

		},
		CarriageComputer4=
		{
		internalName = "CarriageComputer4",
		script="Content/Devices/CarriageComputer4.lua"

	},
	CarriageComputer5=
	{
	internalName = "CarriageComputer5",
	script="Content/Devices/CarriageComputer5.lua"

},
		FrontCarriage =
		{
			internalName = "FrontCarriage",
			script="Content/Devices/FrontCarriage.lua"
		},
		FrontCarriage2 =
		{
			internalName = "FrontCarriage2",
			script="Content/Devices/FrontCarriage2.lua"
		},
		MiddleCarriage =
		{
			internalName = "MiddleCarriage",
			script="Content/Devices/MiddleCarriage.lua"
		},
		EndCarriage =
		{
			internalName = "EndCarriage",
			script="Content/Devices/EndCarriage.lua"
		},
		EndCarriage2 =
		{
			internalName = "EndCarriage2",
			script="Content/Devices/EndCarriage2.lua"
		},
		prototype =
		{
			internalName="Prototype",
			script="Content/Devices/prototype.lua",
		},

	},
}

--[[ Mission Setup ]]--
-- Is called every time the mission is loaded, set up characters, networks, devices etc.
-- Do not add to inventories, connect to networks etc this state is for StartMission
function SetupMission()

	-- Add all characters:
	for k, character in pairs(mission.characters) do
		Mission.AddCharacter(character)
	end

-- Add device
	Mission.AddHackableDevice(mission.devices.Sodamachine)
	Mission.AddHackableDevice(mission.devices.Laptop)
	Mission.AddHackableDevice(mission.devices.CarriageComputer1)
	Mission.AddHackableDevice(mission.devices.CarriageComputer2)
	Mission.AddHackableDevice(mission.devices.CarriageComputer3)
	Mission.AddHackableDevice(mission.devices.CarriageComputer4)
	Mission.AddHackableDevice(mission.devices.CarriageComputer5)
	Mission.AddHackableDevice(mission.devices.FrontCarriage)
	Mission.AddHackableDevice(mission.devices.FrontCarriage2)
	Mission.AddHackableDevice(mission.devices.MiddleCarriage)
	Mission.AddHackableDevice(mission.devices.EndCarriage)
	Mission.AddHackableDevice(mission.devices.EndCarriage2)
	Mission.AddNetDevice(mission.devices.lostphone)

	-- Add all networks:
	for k, network in pairs(mission.networks) do
	Mission.AddNetwork(network)
	end
--Doors --
	Mission.AddNetDevice(mission.devices.keycard_01)

	Doors.SetNetwork(mission.networks.ApostleWiFi)
	Doors.SetZoneKeys("admin",{"adminkey"})

	Doors.SetNetwork(mission.networks.ApostleWiFi)
	Doors.SetZoneKeys("root",{"rootkey"})


-- end ---
	Mission.MissionStarted()
end



--[[ Mission logic  ]]--
-- This function is only called when the mission is loaded with no save,
-- It should set up initial state for characters including their inventories and networks
function StartMission()
-- Add items to player inventory:
	Player.ClearInventory()
	Player.AddItemToInventory(mission.items.meshdevice)
	Player.AddItemToInventory(mission.items.USBDongle)
	Player.ClearDataFiles()
	Player.AddDataFile(mission.data.PlayerPGPKey)

	-- Set up player's network connections:
	Mission.ConnectToNetwork(mission.characters.joe, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey )
	Mission.ConnectToNetwork(mission.characters.joe, mission.networks.ApostleWiFi.name, "none" )
	Mission.ConnectToNetwork(mission.characters.smedley, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.characters.terrence, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.Sodamachine,mission.networks.Semaeopus4G.name,mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.characters.guard01, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey )
	Mission.ConnectToNetwork(mission.characters.guard02, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey )
	Mission.ConnectToNetwork(mission.characters.guard03, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey )
	Mission.ConnectToNetwork(mission.characters.guard04, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey )
	Mission.ConnectToNetwork(mission.devices.Laptop,mission.networks.Semaeopus4G.name,mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.lostphone, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey )
	Mission.ConnectToNetwork(mission.devices.CarriageComputer1, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.CarriageComputer2, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.CarriageComputer3, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.CarriageComputer4, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.CarriageComputer5, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.FrontCarriage, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.FrontCarriage2, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.MiddleCarriage, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.EndCarriage, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)
	Mission.ConnectToNetwork(mission.devices.EndCarriage2, mission.networks.Semaeopus4G.name, mission.networks.Semaeopus4G.userAccessKey)

end

--Doors
--Doors.SetKeyOnDevice("adminkey", mission.devices.keycard_01)

--onInteraction --
MissionObjects["keycard_01"].OnStartInteracting = function (name)
	if name == Player.GetName()then
--	RunMissionCommand(Doors.AssignKeyToCharacter("adminkey", mission.characters.joe))
	Doors.SetKeyOnDevice("adminkey", mission.devices.keycard_01)
	end
end
MissionObjects["CarriageComputer1"].OnStartInteracting = function (name)
	if name == Player.GetName()then
--	RunMissionCommand(Doors.AssignKeyToCharacter("adminkey", mission.characters.joe))
--	Animator.SetBool("FrontCarriage","activate",true)

	end
end
-- outfit changer --
--MissionObjects["ChangeOutfit"].OnStartInteracting = function (name)
	--if name == Player.GetName()then
--	RunMissionCommand(Doors.AssignKeyToCharacter("adminkey", mission.characters.joe))
	-- 	Player.SetInvisible(true)

--	end
--end
MissionObjects["Prototype"].OnStartInteracting = function (name)
	if name == Player.GetName()then
--	RunMissionCommand(Doors.AssignKeyToCharacter("adminkey", mission.characters.joe))
	 		Player.AddItemToInventory(mission.items.prototype)
			Scheduler.CallInSecsWorld(endgame, 30)

	end
end

-- Triggers
MissionObjects["StartTrigger"].OnTriggerEnter = function(name)
	if name == Player.GetName() then
		Mission.StartObjective(mission.objectives.enterbuilding)
		Mission.SendData(mission.characters.guard01,mission.devices.lostphone,mission.data.UnknownText)
	end
end
MissionObjects["CompoundTrigger"].OnTriggerEnter = function(name)
	if name == Player.GetName() then
	Mission.CompleteObjective(mission.objectives.enterbuilding)
	Mission.StartObjective(mission.objectives.findthekeycard)
	end
end

MissionObjects["LaptopTrigger"].OnTriggerEnter = function(name)
	if name == Player.GetName() then
		Mission.StartObjective(mission.objectives.findthecarriage)
	end
end

MissionObjects["GrabDevice"].OnTriggerEnter = function(name)
	if name == Player.GetName() then
Mission.StartObjective(mission.objectives.grabthedevice)
	end
end


function endgame ()
Mission.MissionCompleted()
end
