-- Nanafuse
SMODS.Joker {
	key = 'nanafuse',
	-- no_collection = true,
	atlas = 'morenatsu_jokers',
	pos = { x = 0, y = 0 },
	rarity = 1,
	blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
	-- Logic
	config = {
        extra = {
            roundcounter = 7,
            scale = 1,
            rotation = 1,
            Tarot = 0,
            constant = 0
        }
    },
	loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.roundcounter}}
    end,
	calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval  then
            if card.ability.extra.roundcounter == 1 then -- set back to 6
                local target_card = context.other_card
      local function juice_card_until_(card, eval_func, first, delay) -- balatro function doesn't allow for custom scale and rotation
          G.E_MANAGER:add_event(Event({
              trigger = 'after',delay = delay or 0.1, blocking = false, blockable = false, timer = 'REAL',
              func = (function() if eval_func(card) then if not first or first then card:juice_up(card.ability.extra.scale, card.ability.extra.rotation) end;juice_card_until_(card, eval_func, nil, 0.8) end return true end)
          }))
      end
                return {
                    func = function()
                        local eval = function() return not G.RESET_JIGGLES end
                        juice_card_until_(card, eval, true)
                        return true
                    end,
                    extra = {
                        func = function()
						card:start_dissolve()
						return true
					end,
									message = "Goodbye, my friend.",
								colour = G.C.RED,
								
								-- NEW CODE
								extra = {
								func = function()
									G.P_CENTERS.j_mor_nanafuse.discovered = false
									return true
									end,
								}
								-- END
							}
						}
            else
                return {
                    func = function()
                    card.ability.extra.roundcounter = (card.ability.extra.roundcounter) - 1
                    return true
                end,
                    extra = {
                        func = function()local created_consumable = false
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    created_consumable = true
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer - 1
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card{set = 'Tarot', key = nil, key_append = 'joker_forge_tarot'}
                            G.GAME.consumeable_buffer = 0
                            return true
                        end
                    }))
                end
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})
                    end
                    return true
                end,
                        colour = G.C.PURPLE
                        }
                }
            end
        end
    end
}