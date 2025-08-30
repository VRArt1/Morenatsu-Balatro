local atlas_key = 'mor_atlas' -- Format: PREFIX_KEY
local atlas_path = 'morenatsu_lc.png' -- Filename for the image in the asset folder
local atlas_path_hc = 'morenatsu_hc.png' -- Filename for the high-contrast version of the texture, if existing

local suits = {'hearts', 'clubs', 'diamonds', 'spades'} -- 'hearts', 'clubs', 'diamonds', 'spades'
local ranks = {'Jack', 'Queen', "King"} -- '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"

local description = 'Morenatsu' -- English-language description, also used as default

-- Config
morenatsu_config = SMODS.current_mod.config

-- UI
local UI, load_error = SMODS.load_file("ui.lua")
if load_error then
  sendDebugMessage ("The error is: "..load_error)
else
  UI()
end

-- Quips
SMODS.Atlas{
	key = 'morenatsu_sprites',
		px = 127,
		py = 171,
		path = "morenatsu_sprites.png",
	}

-- Seals
-- SMODS.load_error("seals.lua")()

if morenatsu_config.morenatsuquips then
-- assert(SMODS.load_file("quips.lua"))() -- Testing
SMODS.load_file("quips.lua")()
else
end

-- Jokers
SMODS.Atlas{  
        key = 'morenatsu_jokers',
        px = 71,
        py = 95,
        path = "new_jokers.png",
    }
-- assert(SMODS.load_file("jokers.lua"))() -- Testing
SMODS.load_file("jokers.lua")()

-- Malverk file
-- assert(SMODS.load_file("malverk.lua"))() -- Testing
-- SMODS.load_file("malverk.lua")()

-- Modicon
SMODS.Atlas {
  key = 'modicon',
  px = 32,
  py = 32,
  path = 'modicon.png'
}

-- Deck
SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false},
}
if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false},
    }
end
for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = description
        },
        posStyle = 'deck'
    }
end