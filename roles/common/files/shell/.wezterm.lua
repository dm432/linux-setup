local wezterm = require 'wezterm'
return {
    default_prog = { '/usr/bin/tmux', '-l' },
	color_scheme = 'Catppuccin Mocha',
	enable_tab_bar = false,
	font_size = 14.0,
	font = wezterm.font('JetBrains Mono'),
	window_background_opacity = 0.92,
	window_decorations = 'RESIZE',
	keys = {
		{
			key = 'f',
			mods = 'CTRL',
			action = wezterm.action.ToggleFullScreen,
		},
	},
	mouse_bindings = {
	  {
	    event = { Up = { streak = 1, button = 'Left' } },
	    mods = 'CTRL',
	    action = wezterm.action.OpenLinkAtMouseCursor,
	  },
	},
}
