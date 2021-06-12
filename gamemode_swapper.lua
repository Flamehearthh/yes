io.write("Enter name of user: \n")
playername = io.read()
io.write("Enter desired mode [s/c]: \n")
mode = io.read()

io.write("Confirm user: ", playername, "? [y/n]\n")
confirmUser = io.read()
if confirmUser == "n" then
    goto exit
else
    end

debug = require("component").debug
playerID = debug.getPlayer(playername)

if mode == "s" then
    playerID.setGameType("SURVIVAL")
elseif mode == "c" then
    playerID.setGameType("CREATIVE")
else
    io.write("Error: Invalid mode or player")
end

::exit::