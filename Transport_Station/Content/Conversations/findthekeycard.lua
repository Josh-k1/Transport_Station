sendData = true
encrypted = true

characters = {
	"Joe",
	"Smedley",
	"Terrence",
}

begin = function()
  SendResponse( {"right I am  in the car park"} )
	Send( {"Smedley", "great good job! now we need to find a key to get in the building or we are in trouble.."} )
	SendResponse( {"right will do!"} )
	finish()
end

finish = function()
	End()
end
