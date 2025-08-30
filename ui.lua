MORENATSUBLUE = HEX("0082c8")
MORENATSUDARKBLUE = HEX("022169")

-- Config Tab
SMODS.current_mod.config_tab = function()
  return {
    n = G.UIT.ROOT,
    config = { align = 'cm', padding = 0.05, emboss = 0.05, r = 0.1, colour = G.C.BLACK },
    nodes = {
		{
			n = G.UIT.R,
			config = {
			padding = 0.25,
			align = "cm"
			},
			nodes = {
				{
					n = G.UIT.T,
					config = {
					text = localize("moryesrestart"),
					shadow = true,
					scale = 0.75 * 0.8,
					colour = HEX("d80007")
					},
				},
			},
		},
		{
			n = G.UIT.R,
			config = { align = 'cl', tooltip = {text = {"Changes main menu logo."}},},
			nodes = {
				{
					n = G.UIT.C,
					nodes = {
					create_toggle {
						label = localize('morlogo'),
						ref_table = more_config,
						ref_value = 'morenatsulogo'
						},
					},
				},
			},
		},
		{
			n = G.UIT.R,
			config = { tooltip = {text = {"Adds custom quips."}},},
			nodes = {
				{
					n = G.UIT.C,
					nodes = {
					  create_toggle {
						label = localize('morquips'),
						ref_table = more_config,
						ref_value = 'morenatsuquips'
						},
					},
				},
			}
		},
		
    }
  }
end

-- Credits Tab
SMODS.current_mod.extra_tabs = function()
  local scale = 0.75
  return {
    label = localize("credits"),
    tab_definition_function = function()
      return {
        n = G.UIT.ROOT,
        config = {
          align = "cm",
          padding = 0.05,
          colour = G.C.CLEAR,
        },
        nodes = {
			{
				n = G.UIT.R,
				config = {
				  padding = 0,
				  align = "cm"
				},
				nodes = {
					{
						n = G.UIT.T,
						config = {
						  text = localize("credits_thanks"),
						  shadow = true,
						  scale = scale * 0.8,
						  colour = G.C.UI.TEXT_LIGHT
						}
					}
				}
			},
			{
				n = G.UIT.R,
				config = {
				  padding = 0,
				  align = "cm"
				},
				nodes = {
					{
						n = G.UIT.T,
						config = {
						  text = localize("credits_lead"),
						  shadow = true,
						  scale = scale * 0.8,
						  colour = G.C.UI.TEXT_LIGHT
						}
					},
					{
						n = G.UIT.T,
						config = {
						  text = "V--R",
						  shadow = true,
						  scale = scale * 0.8,
						  colour = HEX("d80007")
						}
					}
				}
			},
			-- {
				-- n = G.UIT.R,
				-- config = {
					-- padding = 0,
					-- align = "cm"
				-- },
				-- nodes = {
					-- {
						-- n = G.UIT.T,
						-- config = {
							-- text = localize("credits_quippers"),
							-- shadow = true,
							-- scale = scale * 0.8,
							-- colour = G.C.UI.TEXT_LIGHT
						-- }
					-- },
					-- {
						-- n = G.UIT.T,
						-- config = {
							-- text = "NAMES GO HERE",
							-- shadow = true,
							-- scale = scale * 0.8,
							-- colour = MORENATSUBLUE
						-- }
					-- }
				-- }
			-- },
			{
				n = G.UIT.R,
				config = {
					padding = 0,
					align = "cm"
            },
            nodes = {
				{
					n = G.UIT.T,
					config = {
						text = localize("credits_special_thanks"),
						shadow = true,
						scale = scale * 0.8,
						colour = G.C.UI.TEXT_LIGHT
					}
				},
				{
					n = G.UIT.T,
					config = {
						text = "NAMES GO HERE",
						shadow = true,
						scale = scale * 0.8,
						colour = MORENATSUBLUE
					}
				}
            }
			},
		    {
				n = G.UIT.R,
				config = {
				  padding = 0,
				  align = "cm"
				},
				nodes = {
					{
						n = G.UIT.T,
						config = {
						  text = "",
						  shadow = true,
						  scale = scale * 0.8,
						  colour = G.C.UI.TEXT_LIGHT
						}
					},
					{
						n = G.UIT.T,
						config = {
							text = "...and you!",
							shadow = true,
							scale = scale * 0.8,
							colour = MORENATSUBLUE
						}
					}
				}
			},
			{
				n = G.UIT.R, config = { padding = 0, align = "cm", -- colour = G.C.BLUE 
				},
				nodes = {
					{
						n = G.UIT.C, config = { padding = 0.2, align = "cl", -- colour = G.C.RED 
						},
						nodes = {
							UIBox_button({
							-- minw = 3.85,
							colour = HEX("d80007"),
							button = "vrgithub",
							label = {"Github"}
							}),
						},
					},
					{
						n = G.UIT.C, config = { padding = 0.2, align = "cr", -- colour = G.C.YELLOW
						},
						nodes = {
						  UIBox_button({
							-- minw = 3.85,
							colour = HEX("f5d985"),
							button = "vrdonate",
							label = {"Donate"}
							})
						},
					},
				},
			},
		},
      }
    end
  }
end

-- Functions

function G.FUNCS.vrgithub(e)
	love.system.openURL("https://github.com/VRArt1/Morenatsu-Balatro")
end
function G.FUNCS.vrdonate(e)
  love.system.openURL("https://ko-fi.com/vrart1")
end