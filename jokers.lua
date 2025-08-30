-- Nanafuse
SMODS.Joker {
	key = 'nanafuse',
	-- no_collection = true,
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



-- Fake Jokers Sprites Wins
SMODS.Joker { key = 'juuichiwin',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 0, y = 0 },
	rarity = 4}
SMODS.Joker { key = 'kounosukewin',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 1, y = 0 },
	rarity = 4}
SMODS.Joker { key = 'kouyawin',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 2, y = 0 },
	rarity = 4}
SMODS.Joker { key = 'kyoujiwin',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 3, y = 0 },
	rarity = 4}
SMODS.Joker { key = 'shinwin',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 4, y = 0 },
	rarity = 4}
SMODS.Joker { key = 'shunwin',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 5, y = 0 },
	rarity = 4}
SMODS.Joker { key = 'soutarouwin',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 6, y = 0 },
	rarity = 4}
SMODS.Joker { key = 'tatsukiwin',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 7, y = 0 },
	rarity = 4}
SMODS.Joker { key = 'torahikowin',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 8, y = 0 },
	rarity = 4}
SMODS.Joker { key = 'nanafusewin',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 9, y = 0 },
	rarity = 4}

-- Fake Jokers Sprites Losses
SMODS.Joker { key = 'juuichiloss',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 0, y = 1 },
	rarity = 4}
SMODS.Joker { key = 'kounosukeloss',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 1, y = 1 },
	rarity = 4}
SMODS.Joker { key = 'kouyaloss',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 2, y = 1 },
	rarity = 4}
SMODS.Joker { key = 'kyoujiloss',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 3, y = 1 },
	rarity = 4}
SMODS.Joker { key = 'shinloss',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 4, y = 1 },
	rarity = 4}
SMODS.Joker { key = 'shunloss',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 5, y = 1 },
	rarity = 4}
SMODS.Joker { key = 'soutarouloss',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 6, y = 1 },
	rarity = 4}
SMODS.Joker { key = 'tatsukiloss',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 7, y = 1 },
	rarity = 4}
SMODS.Joker { key = 'torahikoloss',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 8, y = 1 },
	rarity = 4}
SMODS.Joker { key = 'nanafuseloss',
	no_collection = true,
	atlas = 'morenatsu_sprites',
	in_pool = function(self) return false end,
	pos = { x = 9, y = 1 },
	rarity = 4}