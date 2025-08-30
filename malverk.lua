-- Alt Textures
AltTexture({
    key = 'backsMORE',
    set = 'Back',
    path = 'enhancers.png',
	loc_txt = { name = 'Morenatsu Deck Backs',},
	keys = {'b_red'},
	display_pos = 'b_red',
	original_sheet = true
})

-- Texture Pack
TexturePack {
    key = 'morcards',
    textures = {
        "mor_backsMORE",
    },
        loc_txt = {
        name = "Morenatsu",
        text = {
            "Morenatsu",
            "playing cards."
        }
    }
}