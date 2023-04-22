local status, webdevicons = pcall(require, "nvim-web-devicons")
if (not status) then return end

webdevicons.setup {
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  };
  color_icons = true;
  default = true;
}
