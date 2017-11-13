sendData = true
encrypted = true
-- list characters
characters = {
	"Joe",
	"Smedley",
}
-- begin converstation
begin = function()
	SendResponse({"Right, I'm in the car park now. "})
	Send( {"Smedley", "right, you need to get into the station and hack the computer.Look for a keycard someone may have dropped one."} )
	Send( {"Smedley", "...looks like that computer is password protected..."} )
  SendResponse( {"any ideas how to gain access to it ?"} )
  Send( {"Smedley","same as last time use that USB...."} )
  SendResponse( {"ok..."} )
  finish()
end

-- ends converstation

finish = function()
	End()
end
