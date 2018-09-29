

util.AddNetworkString("Votemap.Vote")
util.AddNetworkString("Votemap.Maps")

Votemap = {}
Votemap.FailCount = 0
Votemap.Maps = {}

Votemap.VoteTime = 30 -- Stop Voting after 60 seconds
Votemap.MapChangeDelay = 5 -- Change Map x seconds after Vote ends


function Votemap:VoteMultiplifer( ply )

	local UserGroup = ply:GetNWString('UserGroup', nil)

	if ( !UserGroup or UserGroup == "" ) then
		ply:ChatPrint("Invalid Usergroup !")
		return
	end
	
	local Votes = 1
	--Votes = Votes + ply:Frags() -- Votes = Votes + players kills

	--if ( ply:SteamID() == "STEAM_0:1:38725115" or UserGroup == "admin" or UserGroup == "superadmin" ) then -- multiplifer, yeah !
		--Votes = Votes * 2
	--end

	return Votes

end

function Votemap:IsValidMap( mapname )

	if ( string.find(mapname, "dm_") or string.find(mapname, "zs_") or string.find(mapname, "ze_") or string.find(mapname, "za_") or string.find(mapname, "zm_")) then
		return true
	end
	
	return false
end

function Votemap.Vote( l, ply, formap )

	local votesfor
	
	if ( formap ) then
		votesfor = formap
	else
		votesfor = net.ReadString()
	end
	
	if ( !votesfor ) then
		ply:ChatPrint("You're not voting for any map !")
		return
	end
	
	if ( !Votemap.Maps[votesfor] ) then
		ply:ChatPrint("That map doesn't exist !")
		return
	end

	local plyvotes = 1
	plyvotes = Votemap:VoteMultiplifer( ply )
	
	if ( !plyvotes or plyvotes == 0 ) then
		ply:ChatPrint("Invalid Multiplifer !")
		return
	end

	if ( ply.VotedFor ) then

		Votemap.Maps[ply.VotedFor] = Votemap.Maps[ply.VotedFor] - plyvotes
		
		if ( Votemap.Maps[ply.VotedFor] < 0 ) then
			Votemap.Maps[ply.VotedFor] = 0
		end

		umsg.Start("Votemap.Votes")
			umsg.String( ply.VotedFor )
			umsg.Float( Votemap.Maps[ply.VotedFor] )
			umsg.Entity( ply )
		umsg.End()

		
		ply.VotedFor = nil
	end

	Votemap.Maps[votesfor] = Votemap.Maps[votesfor] + plyvotes
	
	ply.VotedFor = votesfor

	local mostvotes = 0

	for k,v in pairs(Votemap.Maps) do
	
		if ( v > mostvotes ) then
			Votemap.WinMap = k
			mostvotes = v
		end
		
	end
	
	umsg.Start("Votemap.Votes")
		umsg.String( votesfor )
		umsg.Float( Votemap.Maps[votesfor] )
		umsg.Entity( ply )
	umsg.End()

	print( ply:Nick() .. " voted for: " .. votesfor )

end

function Votemap:FindMaps()

	Votemap.Maps = {}
	local mapnames, folders = file.Find("maps/*.bsp", "GAME")
	
	local maps = {}
	for k,v in pairs( mapnames ) do

		local vv = string.sub( v, 0, -5 )

		if ( Votemap:IsValidMap( vv ) ) then
			MsgN( "[Votemap] Added Map: " .. vv )
			table.insert( maps, vv )
		end

	end
	
	for i=1, #maps do
		Votemap.Maps[maps[i]] = 0
	end

	return Votemap.Maps
end

Votemap:FindMaps()

function Votemap:EndVoting()
	
	if ( !Votemap.WinMap ) then
		MsgN("[Votemap] No Votes, choosing random WinMap !")
		
		local winrar = math.random(1, #Votemap.Maps)
		
		local i = 1
		for k,v in pairs(Votemap.Maps) do
			
			if ( winrar == i ) then
				Votemap.WinMap = k
				break
			end

			i = i + 1
		end
		
		MsgN("[Votemap] Selected: " .. Votemap.WinMap )
		--print("[Votemap] Selected: " .. Votemap.WinMap ) --Need to test this.
	end
	
	for k,v in pairs(player.GetAll()) do
		v:ChatPrint("Changing map to: " .. Votemap.WinMap )
	end

	timer.Simple(Votemap.MapChangeDelay, function()
	
		RunConsoleCommand("changelevel", Votemap.WinMap or "zs_jail_V1")
	
	end)

	MsgN("[Votemap] Simulation Voting has ended.")

end

function Votemap:StartVoting()
	
	if ( Votemap.FailCount == 3 ) then -- If it failed 3 times, stop
		ErrorNoHalt("Votemap - Failed 3 times, stopping ! \n")
		return
	end
	
	local hasmap = false
	for k,v in pairs(Votemap.Maps) do
		
		hasmap = true
	end

	if ( !hasmap ) then
		Votemap:FindMaps()
		
		timer.Simple(5, function() Votemap:StartVoting() Votemap.FailCount = Votemap.FailCount + 1 end)
		return
	end

	net.Start("Votemap.Maps")
		net.WriteString( util.TableToJSON( Votemap.Maps ) )
	net.Broadcast()
	
	hook.Add( "PlayerInitialSpawn", "Votemap.PlayerInitialSpawn", function( ply )

		net.Start("Votemap.Maps")
			net.WriteString( util.TableToJSON( Votemap.Maps ) )
		net.Send(ply)

	end)

	net.Receive("Votemap.Vote", Votemap.Vote)
	
	timer.Simple(Votemap.VoteTime, Votemap.EndVoting)


	MsgN("[Votemap] Started Voting.")
	
end

Votemap.Initialize = Votemap.StartVoting