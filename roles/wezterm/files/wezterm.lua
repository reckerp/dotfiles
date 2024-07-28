local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

function Get_Apperance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

function Scheme_For_Appearance(appearance)
	if appearance:find("Dark") then
		return "Tokyo Night"
	else
		return "Tokyo Night Day"
	end
end

config.default_prog = { "/bin/zsh", "-l", "-c", "tmux attach || tmux" }

config.color_scheme = Scheme_For_Appearance(Get_Apperance())
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "ExtraBold" })
config.font_size = 13

config.window_background_opacity = 0.75
config.macos_window_background_blur = 60

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.window_close_confirmation = "NeverPrompt"

return config
