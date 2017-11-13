sendData = true
encrypted = true

characters = {
	"Joe",
	"Smedley",
	"Terrence",
}

begin = function()
	Send( {"Smedley", "This is it grab the device and get out of there "} )
	SendResponse( {"right will do!"} )
	finish()
end

finish = function()
	End()
end
