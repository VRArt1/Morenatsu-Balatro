return {
	descriptions = {
		Joker={
			-- New Jokers
			j_mor_nanafuse={
                name="七伏 博行",
                text={
					"Creates a {C:tarot}タロット{} card",
					"at end of each round",
                    "for {C:attention}7{} rounds",
					"{C:inactive}(空きが必要)",
                },
			},
		}
	},
    misc = {
		dictionary={ 
			-- Config
			moryesrestart = "再起動が必要です",
			morlogo = "Main Menu Logo",
				morlogo_tooltip = "Changes main menu logo.",
			morquips = "Add Quips",
				morquips_tooltip = "Adds new quips.",
			morstyle = "Quips Style",
			
			-- Credits
			credits = "クレジット",
			credits_thanks = "おかげで",
			credits_lead = "主任開発者: ",
			credits_localization = "日本語ローカライズ: ",
			credits_quippers = "Quips: ",
			credits_special_thanks = "特別な感謝: ",
			donate = "支持",
		},
		quips = {
		
			-- Wins
			mor_juuichiwin = {''},
			mor_kounosukewin = {''},
			mor_kouyawin = {''},
			mor_kyoujiwin = {''},
			mor_shinwin = {''},
			mor_shunwin = {''},
			mor_soutarouwin = {''},
			mor_tatsukiwin = {''},
			mor_torahikowin = {''},
		
			-- Losses
			mor_juuichiloss = {''},
			mor_kounosukeloss = {''},
			mor_kouyaloss = {'あきらめないで!'},
			mor_kyoujiloss = {''},
			mor_shinloss = {''},
			mor_shunloss = {'大丈夫だよ！ワン！もう一度挑戦してもいいよ！'},
			mor_soutarouloss = {''},
			mor_tatsukiloss = {''},
			mor_torahikoloss = {''},
		}
	}
}