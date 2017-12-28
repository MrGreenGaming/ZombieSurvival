--Log lua errors
timer.Simple(1, function()
	RunConsoleCommand("lua_log_sv", "1")
end)

--Disable Team Voice
timer.Simple(1, function()
	RunConsoleCommand("sv_alltalk", "0")
end)

--Saves debug to file at every entry
TURBO_DEBUGGER = false

--Enable editor spawn mode
EDITOR_SPAWN_MODE = false

--Custom debug system save to file interval
DEBUG_SAVE_FILE_TIME = 3

-- Exchange rate coins for killing humans/zombies == Double GC for Holidays! (Halloween, Easter etc)
COINS_PER_ZOMBIE = 1
COINS_PER_HUMAN = 5

--Double XP for everything
DOUBLE_XP = false

--Supply Crate recharge time
SUPPLYCRATE_RECHARGE_TIME = 180