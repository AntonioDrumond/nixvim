{ config, lib, ... }:
{
  imports = [
    ./keys.nix
    ./sets.nix
    ./autocommands.nix

    ./plug/colorscheme/colorscheme.nix

    ./plug/completion/avante.nix
    ./plug/completion/blink.nix
    ./plug/completion/blink-compat.nix
    ./plug/completion/cmp.nix
    ./plug/completion/copilot-cmp.nix
    ./plug/completion/schemastore.nix

    ./plug/lsp/conform.nix
    ./plug/lsp/lsp.nix
    ./plug/lsp/lspsaga.nix
    ./plug/lsp/none-ls.nix
    ./plug/lsp/trouble.nix

    ./plug/statusline/lualine.nix

    # ./plug/ui/bufferline.nix
    ./plug/ui/dressing.nix
    ./plug/ui/fzf-lua.nix
    ./plug/ui/indent-blankline.nix
    ./plug/ui/noice.nix
    # ./plug/ui/nvim-notify.nix
    ./plug/ui/smart-splits.nix
    ./plug/ui/telescope.nix

    ./plug/utils/comment-box.nix
    ./plug/utils/comment.nix
    # ./plug/utils/helm.nix
    ./plug/utils/lz-n.nix
    ./plug/utils/markview.nix
    ./plug/utils/obsidian.nix
    # ./plug/utils/showkeys.nix
    ./plug/utils/spectre.nix
    # ./plug/utils/trunk.nix
    # ./plug/utils/ufo.nix
    # ./plug/utils/undotree.nix
  ];

  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "oxocarbon";
      type = lib.types.enum [
        "aquarium"
        "decay"
        "edge-dark"
        "everblush"
        "everforest"
        "far"
        "gruvbox"
        "jellybeans"
        "material"
        "material-darker"
        "mountain"
        "ocean"
        "oxocarbon"
        "paradise"
        "test"
        "tokyonight"
        "yoru"
        "ayu"
        "catpuccin"
      ];
    };

    assistant = lib.mkOption {
      default = "none";
      type = lib.types.enum [
        "copilot"
        "none"
      ];
    };
  };
  config = {
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "ayu";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
