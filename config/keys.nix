{
	keymaps = [

		# saving / quitting
		{
			mode = "n";
			key = "<C-q>";
			action = ":w <CR>";
		}
		{
			mode = "n";
			key = "<C-n>";
			action = ":q! <CR>";
		}
		{
			mode = "n";
			key = "<C-p>";
			action = ":wq <CR>";
		}

		# Fix space
		{
			mode = "n";
			key = "<space>";
			action = "<nop>";
		}

		# Open terminal
		{
			mode = "n";
			key = "<C-y>";
			action = ":terminal <CR>";
		}
		{
			mode = "n";
			key = "<C-t>";
			action = ":vs t<CR>:terminal<CR><C-w><C-w>:q!<CR>";
		}

		# Indent whole file
		{
			mode = "n";
			key = "<C-i>";
			action = ":normal gg=G<CR>";
		}

		# Other
		{
			mode = "i";
			key = "jk";
			action = "<esc>";
		}
		{
			mode = "n";
			key = "vs";
			action = ":vs<space>";
		}
		{
			mode = "n";
			key = "<CR>";
			action = "<nop>";
		}
		{
			mode = "n";
			key = "<Space>";
			action = "@";
		}
		{
			mode = "n";
			key = "H";
			action = "^";
		}
		{
			mode = "n";
			key = "L";
			action = "$";
		}

	];
}
