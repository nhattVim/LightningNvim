return {
	"OXY2DEV/markview.nvim",
	lazy = false, -- Recommended
	-- ft = "markdown" -- If you decide to lazy-load anyway
	config = function()
		local presets_checkboxes = require("markview.presets").checkboxes
		local presets_headings = require("markview.presets").headings
		local presets_horizontal = require("markview.presets").horizontal_rules
		require("markview").setup({
			checkboxes = presets_checkboxes.nerd,
			headings = presets_headings.arrowed, --other cool opts are  or presets.glow_center
			horizontal_rules = presets_horizontal.double,
			modes = { "n", "i", "c" },
			hybrid_modes = { "n", "i", "c" },
			render_distance = 100,
		})
	end,
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}
