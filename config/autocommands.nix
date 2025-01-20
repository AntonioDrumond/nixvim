{
	autoCmd = [

		# Setting correct indentation sizes
		{
			event = "FileType";
			pattern = [
				"css"
				"html"
				"v"
				"verilog"
				"nix"
			];
			command = "set tabstop=2 softtabstop=2 shiftwidth=2";
		}

		# Close Telescope prompt in insert mode by clicking escape
    {
      event = "FileType";
      pattern = "TelescopePrompt";
      command = "inoremap <buffer><silent> <ESC> <ESC>:close!<CR>";
    }
	];
}
