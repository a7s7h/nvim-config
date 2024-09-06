return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup {
      default = true,
      color_icons = true,
      strict = true,
      override_by_extension = {
					["frag"] = { icon = "", color = "#f3848c", name="Fragment" },
					["fs"] = { icon = "", color = "#f3848c", name="Fragment" },
					["vert"] = { icon = "󱗘", color = "#7aa2f7", name="Vertex" },
					["vs"] = { icon = "󱗘", color = "#7aa2f7", name="Vertex" },
      }
    }
  end,
}
