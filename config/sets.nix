{ pkgs, ... }:
{
	opts = {
		# Line numbers
		number = true;
		relativenumber = true;

		# Indentation
		tabstop = 4;
		softtabstop = 4;
		shiftwidth = 4;
		showtabline = 0;
		expandtab = true;
		autoindent = true;
		smartindent = true;

		# Text wrapping
		wrap = true;
		signcolumn = "yes";

		# Enable mouse
		mouse = "a";

		# Incremental searching
		hlsearch = true;
		incsearch = true;

		# Better searching
		ignorecase = true;
		smartcase = true;

		# Decrease updatetime
		updatetime = 50; # Standard is 4000ms

		# Better completion
		completeopt = [
			"menuone"
			"noselect"
			"noinsert"
		];

		# Better undo history
		swapfile = false;
		autoread = true;
		backup = false;
		undofile = true;

		# 24-bit colors
		termguicolors = true;

		# Reduce which-key timeout to 200ms
		timeoutlen = 200;

		# Text encoding
		encoding = "utf-8";
		fileencoding = "utf-8";

		# More space in the neovim command line for displaying messages
		cmdheight = 0;
	};

	performance.byteCompileLua = {
		enable = true;
		nvimRuntime = true;
		configs = true;
		plugins = true;
	};

	clipboard = {
		/* # for system clipboard
			register = "unnamedplus";
			providers = {
				wl-copy = {
					enable = true;
					package = pkgs.wl-clipboard;
				};
			};
		#*/
	};

	diagnostics = {
		update_in_insert = true;
		severity_sort = true;
		float.border = "rounded";
		jump.severity.__raw = "vim.diagnostic.severity.WARN";
	};
}
