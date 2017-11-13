sendData = true
encrypted = true

characters = {
	"Joe",
	"Smedley",
	"Terrence",
}

begin = function()
	Send( {"Smedley", "Hey Joe"} )
	Send( {"Smedley", "Just got an update, the place is on lockdown this might be a little harder than expected.."} )
	SendResponse( {"Great..."} )
	Send( {"Smedley", "we need you to get into the train compound and download the plans for the new prototype..and if possible, obtain one of the devices..."})
	SendResponse( {"That doesn't sound entirely legal."})
	finish()
end

finish = function()
	End()
end
