-- Nanafuse
SMODS.Joker {
	key = 'nanafuse',
	blueprint_compat = true,
	atlas = 'morenatsu_jokers',
	pos = { x = 0, y = 0 },
	rarity = 1,
	config = { extra = { xmult = 3 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.xmult } }
	end,
	calculate = function(self, card, context)
		local diamonds = true
		for k, v in pairs(G.play.cards) do
			if not v:is_suit("Diamonds") then
				diamonds = false
			break
			end
		end
		if context.joker_main and diamonds and context.scoring_name == "Four of a Kind" then
			return {
				xmult = card.ability.extra.xmult
			}
		end
	end
}