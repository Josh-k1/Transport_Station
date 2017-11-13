sendData = true
encrypted = true

characters = {
	"Joe",
	"Smedley",
	"Terrence",
}

begin = function()
	Send( {"Smedley", "Now we need to find that laptop"} )
	Send( {"Smedley", "with anyluck it should have the info on that train carriage we are looking for"} )
	SendResponse( {"I will see what I can find"} )
	finish()
end

finish = function()
	End()
end
