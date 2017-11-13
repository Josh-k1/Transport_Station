sendData = true
encrypted = true

characters = {
	"Joe",
	"Smedley",
	"Terrence",
}

begin = function()
	Send( {"Smedley", "ok so the carriage is in this compound"} )
	Send( {"Smedley", "You should be able to hack the carriage computers to move them out the way..."} )
	SendResponse( {"I will see what I can find"} )
	finish()
end

finish = function()
	End()
end
