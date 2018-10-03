-- Override default crate count for some maps (Omit version suffix at the end, to match all versions).
function GM:GetCratesPerMap(mapName) for k, v in pairs(self.CratesPerMap) do if string.find(mapName, "^"..k) then return v end end return nil end

-- Default crate fallback in case there is no map in the crate table.
GM.CrateFallBack = 3

-- Edit below with the map name and how many crate(s) to spawn (you'll still need place crates on the map).
GM.CratesPerMap = {
	zs_cabin = 3,
	zs_lighthouse = 2
}