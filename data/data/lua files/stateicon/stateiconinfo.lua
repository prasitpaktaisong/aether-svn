COLOR_TITLE_BUFF = { 155, 202, 155 }
COLOR_TITLE_DEBUFF = { 250, 100, 100 }
COLOR_TITLE_TOGGLE = { 190, 190, 250 }
COLOR_TIME = { 255, 176, 98 }
StateIconList = {}
StateIconList[EFST_IDs.EFST_OVERTHRUSTMAX] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Força Violentíssima", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Aumenta o dano da arma."},
		{"Aumenta as chances de quebrar a arma."}
	}
}
StateIconList[EFST_IDs.EFST_SUFFRAGIUM] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Suffragium", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Reduz o tempo de conjuração."}
	}
}
StateIconList[EFST_IDs.EFST_OVERTHRUST] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Força Violenta", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Aumenta o dano da arma."},
		{"Aumenta a chance de quebrar a arma."}
	}
}
StateIconList[EFST_IDs.EFST_AUTOBERSERK] = {
	descript = {
		{"Instinto de Sobrevivência", COLOR_TITLE_BUFF},
		{"Fúria quando próximo da morte"}
	}
}
StateIconList[EFST_IDs.EFST_BEYOND_OF_WARCRY] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Warcry of Beyond", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Increases physical attack power"},
		{"Decreases magic attack power"}
	}
}
StateIconList[EFST_IDs.EFST_SWORDREJECT] = {
	descript = {
		{"Instinto de Defesa", COLOR_TITLE_BUFF},
		{"Reflete o dano de volta ao monstro atacante"},
		{"(para todos os ataques dos monstros)"},
		{"O dano recebido é reduzido pela metade"},
		{"Você recebe a outra metade do dano"}
	}
}
StateIconList[EFST_IDs.EFST_MANU_DEF] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"¸¶´©Å©ÀÇ ÀÇÁö", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"¸¶´©Å© ÇÊµåÁö¿ª ¸ó½ºÅÍ¿¡°Ô ¹Þ´Â"},
		{"¹°¸®, ¸¶¹ý µ¥¹ÌÁö °¨¼Ò"}
	}
}
StateIconList[EFST_IDs.EFST_ENERVATION] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Masquerade: Enervation", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Reduces ATK"},
		{"Removes Spirit Spheres"}
	}
}
StateIconList[EFST_IDs.EFST_CONCENTRATION] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Concentração", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Aumenta DES, AGI"},
		{"Revela iimigos escondidos próximos"}
	}
}
StateIconList[EFST_IDs.EFST_GRIFFON] = {
	descript = {
		{"Riding Griffon", COLOR_TITLE_TOGGLE}
	}
}
StateIconList[EFST_IDs.EFST_GS_MADNESSCANCEL] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Madness Canceller (Last Stand)", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increases ATK"},
		{"Increases Attack Speed"},
		{"Immobilized"}
	}
}
StateIconList[EFST_IDs.EFST_GS_ACCURACY] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Aumenta Precisão", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Aumenta Precisão"},
		{"Aumenta DES"},
		{"Aumenta AGI"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_STR] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME},
		{"Aumenta FOR"}
	}
}
StateIconList[EFST_IDs.EFST_HALLUCINATIONWALK] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Hallucination Walk", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Improves Evasion Rate"},
		{"Chance to evade Magical Damage."}
	}
}
StateIconList[EFST_IDs.EFST_STORMKICK_ON] = {
	descript = {
		{"Chute Tornado", COLOR_TITLE_BUFF},
		{"Quando atacando um inimigo"},
		{"Chance de preparar o chute tornado"}
	}
}
StateIconList[EFST_IDs.EFST_KAUPE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Kaupe", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Chance de esquivar."}
	}
}
StateIconList[EFST_IDs.EFST_SHIELDSPELL_DEF] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Escudo Mágico)", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Invoca um escudo baseado na defesa"}
	}
}
StateIconList[EFST_IDs.EFST_WARMER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Warmer", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Removes Frozen/Freezing status"}, 
		{"Immunity to Frozen/Freezing status"}, 
		{"Recovers HP every 3 seconds"}
	}
}
StateIconList[EFST_IDs.EFST_PROTECT_MDEF] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Magic Armor Potions", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases resistance to magical attacks"}
	}
}
StateIconList[EFST_IDs.EFST_STAR_COMFORT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Proteção das Estelas", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"Aumenta Velocidade de Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_CRITICALSUCCESSVALUE] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta CRIT"}
	}
}
StateIconList[EFST_IDs.EFST_PROPERTYTELEKINESIS] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Encanta a arma com a propriedade fantasma"}
	}
}
StateIconList[EFST_IDs.EFST_GLOOMYDAY] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Gloomy Day", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases the damage of specific skills"}, 
		{"Reduces FLEE, ASPD"}
	}
}
StateIconList[EFST_IDs.EFST_SIRCLEOFNATURE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Circle of Nature's Sound", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Consumes SP and recovers HP"}
	}
}
StateIconList[EFST_IDs.EFST_DEADLYINFECT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Deadly Infect", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"When attacking"},
		{"or being attacked"},
		{"your status effects are applies to them"}
	}
}
StateIconList[EFST_IDs.EFST_SYMPHONY_LOVE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Symphony of Love", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases MDEF"}
	}
}
StateIconList[EFST_IDs.EFST_BANDING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Banding", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"Banding status"}
	}
}
StateIconList[EFST_IDs.EFST_NJ_BUNSINJYUTSU] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Imagem Falsa", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Evita alguns ataques"}, 
		{"Ataques mágicos não podem ser evitados"}
	}
}
StateIconList[EFST_IDs.EFST_WUGRIDER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Warg Rider", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Bows are Disabled"}, 
		{"Warg Skills are only allowed"}
	}
}
StateIconList[EFST_IDs.EFST_ATKER_BLOOD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"SP Consumption Potion", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Skills using SP have their consumption increased"}
	}
}
StateIconList[EFST_IDs.EFST_BODYPAINT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Body Painting", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Reveals hidden enemies"}, 
		{"Chance to inflict Blind to enemies"}, 
		{"Reduces Enemy ASPD"}
	}
}
StateIconList[EFST_IDs.EFST_NJ_UTSUSEMI] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Troca de Pele", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Evita alguns ataques físicos"}, 
		{"Quando esquiva, move-se na direção oposta ao atacante"}
	}
}
StateIconList[EFST_IDs.EFST_POISONINGWEAPON] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Envenenar Arma", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"Envenena a arma"}
	}
}
StateIconList[EFST_IDs.EFST_CASH_DEATHPENALTY] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"No EXP loss upon death"}
	}
}
StateIconList[EFST_IDs.EFST_GS_ADJUSTMENT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Adjustment", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Reduces HIT"}, 
		{"Increases FLEE"},
		{"Reduces damage of incoming ranged physical attacks"}
	}
}
StateIconList[EFST_IDs.EFST_AUTOSPELL] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Desejo Arcano", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Quando atacar físicamente"},
		{"Conjurará magias automáticamente."}, 
		{"O SP consumido será 2/3 do normal"},
		{"Não pode conjurar sem SP suficiente"}
	}
}
StateIconList[EFST_IDs.EFST_DEC_AGI] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Diminuir Agilidade", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Reduz Velocidade de movimento"}, 
		{"Reduz velocidade de Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_NOEQUIPWEAPON] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Remoção de Armas", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Não pode equipar Armas"}
	}
}
StateIconList[EFST_IDs.EFST_SHIELDSPELL_MDEF] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Escudo Mágico (DEFM)", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Invoca um escudo magico baseado na DEFM"}
	}
}
StateIconList[EFST_IDs.EFST_AUTOGUARD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Bloqueio", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Chance de bloquear ataques físicos"}
	}
}
StateIconList[EFST_IDs.EFST_TAROTCARD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Tarô - Carta do Destino", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Usa uma das 14 cartas e aplica seu efeito"}
	}
}
StateIconList[EFST_IDs.EFST_FEARBREEZE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Fear Breeze", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"When attacking with a bow"}, 
		{"there is a chance to cause additional attacks"}
	}
}
StateIconList[EFST_IDs.EFST_GN_CARTBOOST] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Impulso no Carrinho", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Velocidade de Movimento"}
	}
}
StateIconList[EFST_IDs.EFST_SHIELDSPELL_REF] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Escudo Mágico (Refino)", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Invoca um Escudo Mágico baseado no Refino"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_INT_CASH] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta INT"}
	}
}
StateIconList[EFST_IDs.EFST_NOEQUIPSHIELD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Remover Escudos", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Não pode equipar Escudos"}
	}
}
StateIconList[EFST_IDs.EFST_MELTDOWN] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Golpe Estilhaçante", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Quando atacar um jogador"}, 
		{"Tem a chance de destruir a arma e a armadura"}, 
		{"Quando atacar um monstro"}, 
		{"Diminui o Ataque e a Defesa"}
	}
}
StateIconList[EFST_IDs.EFST_QUAGMIRE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Pântano dos Mortos", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME},
		{"Reduz Velocidade de Movimento"}, 
		{"Reduz AGI/DES"}
	}
}
StateIconList[EFST_IDs.EFST_KAIZEL] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Kaizel", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Tempo de conjuração não afetada por DES"}, 
		{"Quando morrer, você revive com Kyrie Eleison por 2 segundos"}
	}
}
StateIconList[EFST_IDs.EFST_CR_SHRINK] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Submissão", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Quando Bloquear Ataques"}, 
		{"Existe a chance de devolver o Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_VIT] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta VIT"}
	}
}
StateIconList[EFST_IDs.EFST_PARRYING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Aparar Golpe", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Chance de bloquear ataques físicos"}
	}
}
StateIconList[EFST_IDs.EFST_PROTECTWEAPON] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Proteção Química (Arma)", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Prevents weapon from being stripped/broken"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_AGI] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta AGI"}
	}
}
StateIconList[EFST_IDs.EFST_INC_AGI] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Aumentar Agilidade", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Velocidade de Movimento"}, 
		{"Aumenta Velocidade de Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_SHOUT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Grito de Guerra", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta FOR"}
	}
}
StateIconList[EFST_IDs.EFST_CASH_RECEIVEITEM] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Quando matar um monstro"}, 
		{"A Chance de derrubar itens é em dobro"}
	}
}
StateIconList[EFST_IDs.EFST_SPL_DEF] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"·ç½Ã¿Ã¶óÀÇ ²ÜÂ´", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"½ºÇÃ¶ûµðµå ÇÊµåÁö¿ª ¸ó½ºÅÍ¿¡°Ô ¹Þ´Â"}, 
		{"Reduces DEF, MDEF"}
	}
}
StateIconList[EFST_IDs.EFST_ILLUSION] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Caos", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Distorce a imagem"},
		{"Mostra mais dano"},
		{"Aleatóriamente interrompe a conjuração"}
	}
}
StateIconList[EFST_IDs.EFST_HOVERING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Hovering", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Traps and some ground skills do not have any effect"}
	}
}
StateIconList[EFST_IDs.EFST_BENEDICTIO] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Encanta a armadura com a propriedade sagrado"}
	}
}
StateIconList[EFST_IDs.EFST_WEAPONBLOCKING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Weapon Blocking", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"When hit by close range physical attacks"}, 
		{"there is a chance to nullify the damage"}
	}
}
StateIconList[EFST_IDs.EFST_ANGELUS] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Angelus", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta a Defesa de VIT"}
	}
}
StateIconList[EFST_IDs.EFST_MARSHOFABYSS] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Marsh of Abyss", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Slows Movement"},
		{"Reduces DEF, Flee"}
	}
}
StateIconList[EFST_IDs.EFST_STEALTHFIELD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Stealth Field", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Cloaks everyone in a radius around caster"}, 
		{"Consumes SP while active"}, 
		{"Reduces Movement Speed"}
	}
}
StateIconList[EFST_IDs.EFST_ADRENALINE2] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Adrenalina Concentrada", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta velocidade de Ataque da Arma exceto arcos"}
	}
}
StateIconList[EFST_IDs.EFST_MANU_MATK] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"¸¶´©Å©ÀÇ ½Å³ä", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"¸¶´©Å© ÇÊµåÁö¿ª ¸ó½ºÅÍ¿¡°Ô"}, 
		{"¸¶¹ý°ø°Ý µ¥¹ÌÁö »ó½Â"}
	}
}
StateIconList[EFST_IDs.EFST_NOEQUIPARMOR] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Remover Armaduras", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Não pode equipar Armaduras"}
	}
}
StateIconList[EFST_IDs.EFST_RENOVATIO] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Renovatio", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"Recovers HP every 5 seconds"}, 
		{"When used on Undead monsters"}, 
		{"it deals high damage according to skill level"}
	}
}
StateIconList[EFST_IDs.EFST_HIDING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Esconderijo", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Foge dos inimigos escondendo-se no chão"}, 
		{"Pode ser descoberto com habilidade de detecção"}
	}
}
StateIconList[EFST_IDs.EFST_WEIGHTOVER50] = {
	descript = {
		{"50% de Peso Total", COLOR_TITLE_DEBUFF}, 
		{"HP/SP não serão restaurados"}
	}
}
StateIconList[EFST_IDs.EFST_STRUP] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Spurt", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases STR"}, 
		{"if the user is unequipped"}, 
		{"and the skill level is high enough"}
	}
}
StateIconList[EFST_IDs.EFST_NOEQUIPHELM] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Remover Elmos", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Não pode equipar Elmos"}
	}
}
StateIconList[EFST_IDs.EFST_ATTHASTE_POTION3] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"Poção da Fúria Selvagem", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta a Velocidade de Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_ENDURE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Vigor", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Permite Atacar e movimentar-se"}, 
		{"Enquanto Recebe Dano"}
	}
}
StateIconList[EFST_IDs.EFST_TURNKICK_ON] = {
	descript = {
		{"Contra-Chute", COLOR_TITLE_BUFF}, 
		{"Quando Atacar,"}, 
		{"Chance de preparar o Contra-Chute"}
	}
}
StateIconList[EFST_IDs.EFST_ENCHANTPOISON] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Envenenar Arma", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Encanta a Arma com a propriedade Veneno"}
	}
}
StateIconList[EFST_IDs.EFST_SPL_ATK] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"ÇÉ±ÍÅ§¶óÀÇ ¿­¸ÅÀýÀÓ", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"½ºÇÃ¶ûµðµå ÇÊµåÁö¿ª ¸ó½ºÅÍ¿¡°Ô"}, 
		{"¹°¸®°ø°Ý µ¥¹ÌÁö »ó½Â"}
	}
}
StateIconList[EFST_IDs.EFST_BLESSING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Benção", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Aumenta DES, INT e FOR"}, 
		{"Remove alguns efeitos de Status"}
	}
}
StateIconList[EFST_IDs.EFST_ONEHANDQUICKEN] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rapidez com Uma Mão", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Usando armas de uma mão"},
		{"Aumenta velocidade de Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_SPEARQUICKEN] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rapidez com Lança", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Ã¢ »ç¿ë ½Ã"}, 
		{"Aumenta Velocidade de Ataque"}, 
		{"Auemnta Crítico"}, 
		{"Aumenta Esquiva"}
	}
}
StateIconList[EFST_IDs.EFST_BROKENWEAPON] = {
	descript = {
		{"Arma Danificada", COLOR_TITLE_DEBUFF}
	}
}
StateIconList[EFST_IDs.EFST_ASSUMPTIO] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Assumptio", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Reduz o dano recebido"}
	}
}
StateIconList[EFST_IDs.EFST_MAXIMIZE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Amplificar Poder", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta o Dano para o máximo"}, 
		{"Drena SP ao longo do tempo"}
	}
}
StateIconList[EFST_IDs.EFST_LG_REFLECTDAMAGE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Refletir Dano", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Devolve o dano recebido a todos os monstros ao redor"}, 
		{"Consome SP a cada segundo"}
	}
}
StateIconList[EFST_IDs.EFST_PROTECTSHIELD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Proteção Química (Escudo)", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Previe que o Escudo seja removido ou quebrado"}
	}
}
StateIconList[EFST_IDs.EFST_MAGNIFICAT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Magnificat", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Recuperação natura de HP e SP"}
	}
}
StateIconList[EFST_IDs.EFST_ATTHASTE_POTION1] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Poção da Concentração", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Velocidade de Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_POISONREACT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Refletir Veneno", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"Contra-Ataca com venono uma vez"},
		{"Quando acertado por ataque que não seja da propriedade veneno,"},
		{"Chance de envenenar o alvo"}
	}
}
StateIconList[EFST_IDs.EFST_MOVHASTE_HORSE] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta velocidade de movimento"}
	}
}
StateIconList[EFST_IDs.EFST_CRESCENTELBOW] = {
	descript = {
		{"Crescent Elbow", COLOR_TITLE_BUFF}, 
		{"Attempts to counter opponent's attack"}, 
		{"You still take some of the damage"}
	}
}
StateIconList[EFST_IDs.EFST_SONG_OF_MANA] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Song of Mana", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Recovers SP every 5 seconds"}
	}
}
StateIconList[EFST_IDs.EFST_KAAHI] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Kaahi", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Quando você é acertado, exceto por Habilidades"},
		{"O SP é consumido e o HP é recuperado"}
	}
}
StateIconList[EFST_IDs.EFST_ECHOSONG] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Echo Song", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases DEF"}
	}
}
StateIconList[EFST_IDs.EFST_PRESERVE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Preservar", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Mantém a habilidade do Plágio"}
	}
}
StateIconList[EFST_IDs.EFST_WEAPONPERFECT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Manejo Perfeito", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Causará 100% de dano aos monstros"},
		{"dos tamanhos: Pequeno, Médio e Grande"}
	}
}
StateIconList[EFST_IDs.EFST_PROVOKE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Provocar", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Reduz a Defesa de VIT"},
		{"Aumenta Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_MOVHASTE_POTION] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta Velocidade de Movimento"}
	}
}
StateIconList[EFST_IDs.EFST_EDP] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Encantar com Veneno Mortal", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Envenena a arma com Veneno Mortal"}, 
		{"O Dano não é aumentado contra monstros do tipo chefe"}
	}
}
StateIconList[EFST_IDs.EFST_JOINTBEAT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Ataque Vital", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Causa vários status no alvo"}, 
		{"Devido as lesões articulares"}
	}
}
StateIconList[EFST_IDs.EFST_PROVIDENCE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Divina Providência", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"Aumenta resistência contra monstros"}, 
		{"do tipo demônio e morto-vivo"}
	}
}
StateIconList[EFST_IDs.EFST_FIGHTINGSPIRIT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rune Stone: Fighting Spirit", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increases ATK"},
		{"Increases ASPD of caster"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_VIT_CASH] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta VIT"}
	}
}
StateIconList[EFST_IDs.EFST_SATURDAY_NIGHT_FEVER] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"Wild", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Decreases HP/SP per 3 seconds"}, 
		{"Damage increased, Defense and Evasion dropped"}, 
		{"Skills and items cannot be used."}
	}
}
StateIconList[EFST_IDs.EFST_TRUESIGHT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Visão Real", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Aumenta todos os Status"},
		{"Aumenta Ataque, Precisão e Crítico"}
	}
}
StateIconList[EFST_IDs.EFST_CASH_PLUSONLYJOBEXP] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME},
		{"Aumenta experiência de Classe em 150%"}
	}
}
StateIconList[EFST_IDs.EFST_ARMOR_PROPERTY] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Propriedade da Armadura", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Muda a propriedade elemental"}
	}
}
StateIconList[EFST_IDs.EFST_TENSIONRELAX] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Relaxar", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta recuperação natural de HP"}
	}
}
StateIconList[EFST_IDs.EFST_DEATHHURT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Death Hurt (Contaminated Wound Poison)", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"È¸º¹ ½ºÅ³À» ¹ÞÀ» ¶§ È¿°ú ÀúÇÏ"}
	}
}
StateIconList[EFST_IDs.EFST_IMPOSITIO] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Impositio Manus", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Dano da Arma"}
	}
}
StateIconList[EFST_IDs.EFST_LEECHESEND] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Leech End", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Drains HP every second"}
	}
}
StateIconList[EFST_IDs.EFST_REPRODUCE] = {
	descript = {
		{"Reproduce", COLOR_TITLE_BUFF},
		{"Activates when targetted by a skill"}, 
		{"Only one skill can be learnt"}
	}
}
StateIconList[EFST_IDs.EFST_ACCELERATION] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Acceleration", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases movement speed of the Magic Gear"}
	}
}
StateIconList[EFST_IDs.EFST_NJ_NEN] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Soul", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases INT, STR"}
	}
}
StateIconList[EFST_IDs.EFST_FORCEOFVANGUARD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Force of Vanguard", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Max HP, Defense increased"}, 
		{"When physicalled attacked there is a chance to earn a rage counter"},
		{"SP consumed while active"}
	}
}
StateIconList[EFST_IDs.EFST_RG_CCONFINE_M] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Confinamento", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Ambos não poderão se mover"}, 
		{"Aumenta Esquiva"}, 
		{"Não pode ser usado contra Chefes"}
	}
}
StateIconList[EFST_IDs.EFST_TRICKDEAD] = {
	descript = {
		{"Fingir de Morto", COLOR_TITLE_TOGGLE}, 
		{"Finge Status de Morto"}
	}
}
StateIconList[EFST_IDs.EFST_PROPERTYWATER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Encantar com Geada", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Encanta a arma com a propriedade Água"}
	}
}
StateIconList[EFST_IDs.EFST_ADORAMUS] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Adoramus", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Blinds and reduces Movement Speed"}
	}
}
StateIconList[EFST_IDs.EFST_GENTLETOUCH_ENERGYGAIN] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Gentle Touch - Energy Gain", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"When attacked or when attacking, there is a chance to"}, 
		{"earn a Spirit Sphere"}
	}
}
StateIconList[EFST_IDs.EFST_NEUTRALBARRIER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Neutral Barrier", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"DEF/MDEF up"},
		{"Neutralizes ranged attacks"}
		}
}
StateIconList[EFST_IDs.EFST_EARTHSCROLL] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Happy Break (Enjoyable Rest)", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"When sitting with another Taekwon"}, 
		{"A certain amount of SP is regained"}, 
		{"Chance for Earth Spike scrolls to not be destroyed when used"}
	}
}
StateIconList[EFST_IDs.EFST_FALCON] = {
	descript = {
		{"Adestrar Falcão", COLOR_TITLE_TOGGLE}, 
		{"Permite alugar um Falcão"}
	}
}
StateIconList[EFST_IDs.EFST_TWOHANDQUICKEN] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rapidez com Duas Mãos", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Quando usado com armas de duas mãos,"}, 
		{"Aumenta a velocidade de Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_SUN_COMFORT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Proteção Solar", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Defesa de VIT"}
	}
}
StateIconList[EFST_IDs.EFST_KYRIE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Kyrie Eleison", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Uma barreira defensiva que bloqueia vários ataques"}
	}
}
StateIconList[EFST_IDs.EFST_PROTECTARMOR] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Proteção Química (Armadura)", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Previne que a armadura seja removida ou destruída"}
	}
}
StateIconList[EFST_IDs.EFST_GIANTGROWTH] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rune Stone: Giant Growth", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases STR"}, 
		{"There is a chance to vastly increase damage"}, 
		{"of close range physical attacks"}, 
		{"Chance to destroy weapon with each hit"}
	}
}
StateIconList[EFST_IDs.EFST_STR_SCROLL] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta FOR"}
	}
}
StateIconList[EFST_IDs.EFST_AB_SECRAMENT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Sacramento", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Reduz o tempo fixo de Conjuração"}
	}
}
StateIconList[EFST_IDs.EFST_PARALYSE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Paralyze", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Reduces Attack Speed"}, 
		{"Reduces FLEE"},
		{"Reduces Movement Speed"}
	}
}
StateIconList[EFST_IDs.EFST_PROPERTYGROUND] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Encantar com Terremoto", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Encanta a arma com a propriedade Terra"}
	}
}
StateIconList[EFST_IDs.EFST_DOUBLECASTING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Lanças Duplas", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Quando conjurar Lanças"},
		{"Chance de conjurar outra Lança automáticamente"}
	}
}
StateIconList[EFST_IDs.EFST_RG_CCONFINE_S] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Confinamento", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Ambos não poderão se mover"}, 
		{"Aumenta Esquiva"}, 
		{"Não funciona contra mosntros do tipo Chefe"}
	}
}
StateIconList[EFST_IDs.EFST_OVERHEAT] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"Over Heat", COLOR_TITLE_BUFF}, 
		{"Heating caused by skill use"}, 
		{"Drains HP every second"}
	}
}
StateIconList[EFST_IDs.EFST_SPL_MATK] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Cornelia Anubis' Tears", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"½ºÇÃ¶ûµðµå ÇÊµåÁö¿ª ¸ó½ºÅÍ¿¡°Ô"}, 
		{"Magical attack damage increased"}
	}
}
StateIconList[EFST_IDs.EFST_DEEP_SLEEP] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Deep Sleep Status", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Increases Damage Received by 1.5 times"}, 
		{"Recovers HP/SP every 2 seconds"}
	}
}
StateIconList[EFST_IDs.EFST_RECOGNIZEDSPELL] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Recognized Spell", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Magic Skills deals Max Damage"}, 
		{"All skills consumes more SP"}
	}
}
StateIconList[EFST_IDs.EFST_TARGET_ASPD] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Máximo SP aumentado, Consumo de SP reduzido"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_BASICAVOIDANCE] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME},
		{"Aumenta Esquiva"}
	}
}
StateIconList[EFST_IDs.EFST_DEFENDER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Aura Sagrada", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Reduz o dano de Ataques físicos"}, 
		{"Reduz Velocidade de Ataque e Movimento"}
	}
}
StateIconList[EFST_IDs.EFST_WEAPONPROPERTY] = {
	haveTimeLimit = 0, descript = {
		{"Encanta a arma com a propriedade"}
	}
}
StateIconList[EFST_IDs.EFST_S_LIFEPOTION] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Small Life Potion", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Recoverys HP every 5 seconds"}, 
		{"No effect if Berserk State is active"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_LUK] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumentar Sorte"}
	}
}
StateIconList[EFST_IDs.EFST_BLOODING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Sangramento", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"Recuperação natural de SP e SP desabilitados"},
		{"Perde HP a cada 10 segundos"}
	}
}
StateIconList[EFST_IDs.EFST_REFRESH] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rune Stone: Refresh", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Removes all debuffs when cast"}, 
		{"Grants immunity to debuffs"}, 
		{"Recovers a certain amount of HP"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_LUK_CASH] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME},
		{"Aumenta Sorte"}
	}
}
StateIconList[EFST_IDs.EFST_BROKENARMOR] = {
	descript = {
		{"Armadura Quebrada", COLOR_TITLE_DEBUFF}
	}
}
StateIconList[EFST_IDs.EFST_DODGE_ON] = {
	descript = {
		{"Dodge", COLOR_TITLE_BUFF}, 
		{"Allows Flying Kick to be used as a counter"}, 
		{"When receiving enemy magic attack"}, 
		{"there is a chance of completely avoiding it"}, 
		{"If Spurt is also active"}, 
		{"chance of avoiding physical attacks as well"}
	}
}
StateIconList[EFST_IDs.EFST_TARGET_BLOOD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Poção da Resistencia", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta resistência a"}, 
		{"Caos, Congelamento, Petrificar, Sono, Silêncio"},
		{"Cegueira, Maldição, Veneno, Sangramento e Confusão"}
	}
}
StateIconList[EFST_IDs.EFST_MELODYOFSINK] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Melody of Sink", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"Increases Magical Damage"}, 
		{"Decreases Physical Damage"}
	}
}
StateIconList[EFST_IDs.EFST_CRUCIS] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Signum Crucis", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Reduz a Defesa dos monstros do tipo Demônio e Morto-vivo"}
	}
}
StateIconList[EFST_IDs.EFST_SLOWCAST] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Slow Cast", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases Casting Time"}
	}
}
StateIconList[EFST_IDs.EFST_PROPERTYWIND] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Encantar com Ventania", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Encanta a arma com a propriedade Vento"}
	}
}
StateIconList[EFST_IDs.EFST_ENCHANTBLADE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Enchant Blade", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Adds magic damage to physical attacks"}
	}
}
StateIconList[EFST_IDs.EFST_ADRENALINE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Adrenlina Pura", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta a Velocidade de Ataque"}, 
		{"Machados e Maças"}
	}
}
StateIconList[EFST_IDs.EFST_MAGICMUSHROOM] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Magic Mushroom (Laughing Poison Mushroom)", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Uses Smile Emoticon"}, 
		{"Casts random spells every 4 seconds"}, 
		{"Drains HP every 4 seconds"}
	}
}
StateIconList[EFST_IDs.EFST_CASH_PLUSEXP] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta experiência de base"}
	}
}
StateIconList[EFST_IDs.EFST_ATTHASTE_POTION2] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Poção do Despertar", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta a Velocidade de Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_TOXIN] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Toxin", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Interferes with skills every 10 seconds"},
		{"Phen card is ignored"}, 
		{"Every 10 seconds, SP is consumed"}
	}
}
StateIconList[EFST_IDs.EFST_RAISINGDRAGON] = {
	descript = {
		{"Rising Dragon", COLOR_TITLE_BUFF}, 
		{"Maximum Spheres Increased"}, 
		{"Increases Maximum HP/SP"}, 
		{"Increases Attack Speed"}, 
		{"Maintains Fury State"}, 
		{"Slowly Drains HP per seconds"}
	}
}
StateIconList[EFST_IDs.EFST_HARMONIZE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Harmonize", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increases all Stats"}
	}
}
StateIconList[EFST_IDs.EFST_CHASEWALK2] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Increases STR"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_STR_CASH] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME},
		{"Aumenta Força"}
	}
}
StateIconList[EFST_IDs.EFST_CLOAKINGEXCEED] = {
	descript = {
		{"Cloaking Exceed", COLOR_TITLE_BUFF},
		{"Hides from Insects and Demon types too."},
		{"Remains hidden until a certain number of hits received."},
		{"Increases Movement Speed"}
	}
}
StateIconList[EFST_IDs.EFST_ASSUMPTIO2] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Assumptio", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Defesa"}
	}
}
StateIconList[EFST_IDs.EFST_THORNS_TRAP] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Thorn Trap", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME},
		{"Periodically applies damage"}
	}
}
StateIconList[EFST_IDs.EFST_SLOWPOISON] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Retardar Veneno", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Temporariamente retarda o efeito de Veneno"}
	}
}
StateIconList[EFST_IDs.EFST_CLOAKING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Furtividade", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Torna o usuário invisivel quando próximo a uma parede"}
	}
}
StateIconList[EFST_IDs.EFST_PARTYFLEE] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta Esquiva"}
	}
}
StateIconList[EFST_IDs.EFST_CRITICALPERCENT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Varnish", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases Critical"}
	}
}
StateIconList[EFST_IDs.EFST_INSPIRATION] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Inspiration", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Hit rate, Stats, Damage, Max HP increased"}, 
		{"All buffs and status effects removed"},
		{"Drains HP, SP over time"},
		{"Cannot receive status effects"},
		{"Lose a percentage of your EXP"}
	}
}
StateIconList[EFST_IDs.EFST_UNLIMITED_HUMMING_VOICE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Unlimited Humming Voice", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Affected target's skills"},
		{"increase their SP consumption"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_DEX] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta Destreza"}
	}
}
StateIconList[EFST_IDs.EFST_ANALYZE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Analyze", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Reduces Physical and Magical Defense"}
	}
}
StateIconList[EFST_IDs.EFST_GENTLETOUCH_REVITALIZE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Gentle Touch - Revitalize", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases VIT, Max HP"}, 
		{"Increases DEF"}, 
		{"Increases natural HP Recovery"}, 
		{"Movement speed increased"}
	}
}
StateIconList[EFST_IDs.EFST_COUNTER_ON] = {
	descript = {
		{"Preprar Contra-chute", COLOR_TITLE_BUFF}, 
		{"Acerta um inimigo"}, 
		{"Fica pronto para um Contra-Chute"}
	}
}
StateIconList[EFST_IDs.EFST_GLORIA] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Gloria", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Sorte"}
	}
}
StateIconList[EFST_IDs.EFST_RUSH_WINDMILL] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rush Windmill Attack", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases Damage"}
	}
}
StateIconList[EFST_IDs.EFST_PYREXIA] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Pyrexia", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Dark and Hallucinating state"}
	}
}
StateIconList[EFST_IDs.EFST_DANCE_WITH_WUG] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Dance With Warg", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases ASPD"}, 
		{"Reduces Fixed casting time"}
	}
}
StateIconList[EFST_IDs.EFST_SWING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Swing Dance", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases Movement Speed"}, 
		{"Increases ASPD"}
	}
}
StateIconList[EFST_IDs.EFST_MOON_COMFORT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Proteção da Lua", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Esquiva"}
	}
}
StateIconList[EFST_IDs.EFST_MOONLIT_SERENADE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Moonlit Serenade", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases damage of magic skills"}
	}
}
StateIconList[EFST_IDs.EFST_GENTLETOUCH_CHANGE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Gentle Touch - Change", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Reduces DEF and MDEF"}, 
		{"Increases Damage and ASPD"}
	}
}
StateIconList[EFST_IDs.EFST_STRIPACCESSARY] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Accessory Off Status", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Cannot Equip Accessories"}
	}
}
StateIconList[EFST_IDs.EFST_PROPERTYUNDEAD] = {
	haveTimeLimit = 1, descript = {
		{"Enchants Armor with Undead Property"}
	}
}
StateIconList[EFST_IDs.EFST_INVISIBILITY] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Invisibility", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Conceals yourself from view"}, 
		{"All attacks become Ghost Lvl 1 property"}, 
		{"Drains SP"}, 
		{"Skills and items cannot be used"}
	}
}
StateIconList[EFST_IDs.EFST_ABUNDANCE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rune Stone: Abundance", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Recovers SP every 10 seconds"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_BASICHIT] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta Precisão"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_AGI_CASH] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta Agilidade"}
	}
}
StateIconList[EFST_IDs.EFST_SHADOWFORM] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Shadow Form", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"For a certain number of hits"}, 
		{"have a target take the damage instead"}
	}
}
StateIconList[EFST_IDs.EFST_AUTOSHADOWSPELL] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Auto Shadow Spell", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Automatically casts"}, 
		{"an available magic spell"}
	}
}
StateIconList[EFST_IDs.EFST_SHAPESHIFT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Shape Shift", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Changes your Mado Gear elemental property"}
	}
}
StateIconList[EFST_IDs.EFST_MANU_ATK] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"¸¶´©Å©ÀÇ È£±â", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"¸¶´©Å© ÇÊµåÁö¿ª ¸ó½ºÅÍ¿¡°Ô"}, 
		{"¹°¸®°ø°Ý µ¥¹ÌÁö »ó½Â"}
	}
}
StateIconList[EFST_IDs.EFST_MARIONETTE_MASTER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Controle de Marionete", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Transfere os Atributos para o"}, 
		{"Jogador Alvo"}
	}
}
StateIconList[EFST_IDs.EFST_MARIONETTE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Controle de Marionete (Alvo)", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Jogador que controla"}, 
		{"Recebe os Atributos do Alvo"}
	}
}
StateIconList[EFST_IDs.EFST_WZ_SIGHTBLASTER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Sight Blaster", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Attacks an enemy with a single attack"}, 
		{"that ventures too close"}
	}
}
StateIconList[EFST_IDs.EFST_LEXAETERNA] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Lex Aeterna", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Dobra o Dano do próximo Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_INFRAREDSCAN] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Infrared Scan", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Discovers targets in hiding"}, 
		{"Chance to Reduce FLEE of nearby enemy"}
	}
}
StateIconList[EFST_IDs.EFST_INT_SCROLL] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta Inteligência"}
	}
}
StateIconList[EFST_IDs.EFST_ASPERSIO] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Aspersio", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Encantar Arma com a propriedade Sagrado"}
	}
}
StateIconList[EFST_IDs.EFST_MOVHASTE_INFINITY] = {
	descript = {
		{"Aumenta velocidade de movimento"}
	}
}
StateIconList[EFST_IDs.EFST_LERADS_DEW] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Lerad's Dew", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases Max HP"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_INT] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta Inteligência"}
	}
}
StateIconList[EFST_IDs.EFST_VENOMBLEED] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Venom Bleed", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Reduces Max HP"}
	}
}
StateIconList[EFST_IDs.EFST_GS_GATLINGFEVER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Ataque Gatling", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Dano e Velocidade de Ataque"}, 
		{"Reduz Velocidade de Movimento"}
	}
}
StateIconList[EFST_IDs.EFST_VITALITYACTIVATION] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rune Stone: Vitality Activation", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"To the caster,"}, 
		{"Increases Healing skills and Item effects"}, 
		{"Stops SP regeneration"}, 
		{"Reduces SP recovery item effects"}
	}
}
StateIconList[EFST_IDs.EFST_STONEHARDSKIN] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rune Stone: Stone Hard Skin", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Resists damage equal to the HP consumed when casting"}, 
		{"Players that attack you with weapons"}, 
		{"will break them by chance."}, 
		{"On monsters, they will have reduced ATK for 10 seconds"}
	}
}
StateIconList[EFST_IDs.EFST_WEIGHTOVER90] = {
	descript = {
		{"Acima de 90% do Peso", COLOR_TITLE_DEBUFF}, 
		{"HP e SP Não serão restaurados"}, 
		{"Ataques e Habilidade estão Desabilitados"}
	}
}
StateIconList[EFST_IDs.EFST_PROTECTHELM] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Proteção Química (Elmo)", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Impede que o Elmo seja Removido ou Quebrado"}
	}
}
StateIconList[EFST_IDs.EFST_PLUSAVOIDVALUE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"È¯¿µÀÇ ¼úÀÜ", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"¿ÏÀü È¸ÇÇ Áõ°¡"}
	}
}
StateIconList[EFST_IDs.EFST_OBLIVIONCURSE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Oblivion Curse", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Oblivion status"}
	}
}
StateIconList[EFST_IDs.EFST_HEALPLUS] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Enhanced Healing Potion", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"When healing via recovery items"}, 
		{"the healing effect is increased"}
	}
}
StateIconList[EFST_IDs.EFST_PROTECT_DEF] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Defense Protection", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases physical DEF"}
	}
}
StateIconList[EFST_IDs.EFST_CRITICALWOUND] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Feridas Críticas", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Reduz o efeito de Itens de Cura"}
	}
}
StateIconList[EFST_IDs.EFST_PRESTIGE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Prestige", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Chance to evade Magical Attacks"}, 
		{"Defense Up"}
	}
}
StateIconList[EFST_IDs.EFST_FOOD_DEX_CASH] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta Destreza"}
	}
}
StateIconList[EFST_IDs.EFST_CARTBOOST] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Impulso no Carrinho", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Velocidade de Movimento"}
	}
}
StateIconList[EFST_IDs.EFST_L_LIFEPOTION] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Medium Life Potion", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Recovers HP every 4 seconds"}, 
		{"No effect if Berserk State is active"}
	}
}
StateIconList[EFST_IDs.EFST_WINDWALK] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Caminho do Vento", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Aumenta Velocidade de Movimento e Esquiva"}
	}
}
StateIconList[EFST_IDs.EFST_PROPERTYFIRE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Flame Launcher", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Enchants Weapon with Fire Property"}
	}
}
StateIconList[EFST_IDs.EFST_STRIKING] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Striking", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases Weapon damage and chance of critical"}
	}
}
StateIconList[EFST_IDs.EFST_DOWNKICK_ON] = {
	descript = {
		{"Preparar Patada Voadora", COLOR_TITLE_BUFF}, 
		{"Acerta um Inimigo"}, 
		{"Chance de usar Patada Voadora"}
	}
}
StateIconList[EFST_IDs.EFST_PROPERTYDARK] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Enchants Armor with Shadow Property"}
	}
}
StateIconList[EFST_IDs.EFST_REFLECTSHIELD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Escudo Refletor", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Quando por danos de curta-distância"}, 
		{"Reflete uma parte do dano"}
	}
}
StateIconList[EFST_IDs.EFST_RIDING] = {
	descript = {
		{"Montaria", COLOR_TITLE_TOGGLE} --Rental Transportation
	}
}
StateIconList[EFST_IDs.EFST_LIGHTNINGWALK] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Lightning Walk", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"When targetted by a magic attack,"}, 
		{"after a chance to avoid"}, 
		{"move straight to the caster"}
	}
}
StateIconList[EFST_IDs.EFST_FROSTMISTY] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Freezing Status", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Decreases Defense, ASPD and Movement speed"}, 
		{"Increases Fixed Cast time."}
	}
}
StateIconList[EFST_IDs.EFST_COLD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Frozen", COLOR_TITLE_DEBUFF}, 
		{"%s", COLOR_TIME}, 
		{"Movement, Attack, Skill and Items are not available"}, 
		{"Drains SP and HP continuously"},
		{"Increases the damage taken caused by Maces, Axes and 2H Axes"},
		{"Increases the damage taken caused by Wind Property spells"},
		{"Reduces the damage taken caused by Daggers, Swords, 2H Swords and Arrows"}
	}
}
StateIconList[EFST_IDs.EFST_GROUNDMAGIC] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Efeito no Terreno"}
	}
}
StateIconList[EFST_IDs.EFST_HELLPOWER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Poder Infernal", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Não pode ser revivido"}, 
		{"Sacrífico desabilitado"}, 
		{"Ode a Siegfried desabilitado"}
	}
}
StateIconList[EFST_IDs.EFST_SAVAGE_STEAK] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Savage Roast", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases STR"}
	}
}

StateIconList[EFST_IDs.EFST_COCKTAIL_WARG_BLOOD] = {
haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Wolf Blood Cocktail", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases INT"}
	}
}
StateIconList[EFST_IDs.EFST_MINOR_BBQ] = {
haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Minorous Beef Stew", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases VIT"}
	}
}
StateIconList[EFST_IDs.EFST_SIROMA_ICE_TEA] = {
haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Siroma Iced Tea", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases DEX"}
	}
}
StateIconList[EFST_IDs.EFST_DROCERA_HERB_STEAMED] = {
haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Drosera Herb Salad", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Increases AGI"}
	 }
 }
StateIconList[EFST_IDs.EFST_PUTTI_TAILS_NOODLES] = {
haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Petite Tail Noodle", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME},
		{"Increases LUK"}
	 }
 }
StateIconList[EFST_IDs.EFST_STOMACHACHE] = {
haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Abdominal Pain", COLOR_TITLE_BUFF},  -- or Stomach Ache
		{"%s", COLOR_TIME}, 
		{"Reduces All Stats"}, 
		{"Reduces Movement Speed"},
		{"10ÃÊ ´ç ÇÑ ¹ø¾¿ /¾É±â ¹ß»ý"},
		{"Drains SP every 10 seconds"}
	}
 }
StateIconList[EFST_IDs.EFST_PROTECTEXP] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Mãe, Pai, amo vocês!", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Sem perda de Experiência quando derrotado"}
	}
}
StateIconList[EFST_IDs.EFST_ANGEL_PROTECT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Anjo da Guarda", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME},
		{"Sem perca de Experiência quando morre"}
	}
}
StateIconList[EFST_IDs.EFST_MORA_BUFF] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Mora Berry", COLOR_TITLE_BUFF}, --google translated
		{"%s", COLOR_TIME}, 
		{"Increases Resistance to every monsters"},
		{"in the fields near the town of Mora."}
	}
}
StateIconList[EFST_IDs.EFST_POPECOOKIE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Pope Cookie", COLOR_TITLE_BUFF}, 
		{"%s", COLOR_TIME}, 
		{"Increases ATK and MATK"}, 
		{"Increases Resistance to all property."}
	}
}
StateIconList[EFST_IDs.EFST_VITALIZE_POTION] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Vitalize Potion", COLOR_TITLE_BUFF}, --Google says "Activation Potion"
		{"%s", COLOR_TIME}, 
		{"Increases ATK and MATK"}, 
		{"Èú°ú ¾ÆÀÌÅÛÀÇ È¸º¹È¿´É Áõ°¡"}
	}
}
StateIconList[EFST_IDs.EFST_G_LIFEPOTION] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Rapid Life-giving Water", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Recovers HP every 3 seconds"}, 
		{"No effect if Berserk State is active"}
	}
}
StateIconList[EFST_IDs.EFST_ODINS_POWER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Odin's Power", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Increases ATK and MATK"}, 
		{"Decreases DEF and MDEF"}
	}
}
StateIconList[EFST_IDs.EFST_MAGIC_CANDY] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Magic Candy", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Increases MATK"}, 
		{"Reduced Fixed Casting"},
		{"Casting cannot be interrupted."},
		{"Drains SP every 10 seconds"}
	}
}
StateIconList[EFST_IDs.EFST_ENERGYCOAT] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Energy Coat", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Reduces damage in proportion"}, 
		{"to the amount of SP remaining"}
	}
}
StateIconList[EFST_IDs.EFST_PAIN_KILLER] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Pain Killer", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"No movement delay in receiving damage"}, 
		{"Reduced damage taken"}
	}
}
StateIconList[EFST_IDs.EFST_LIGHT_OF_REGENE] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Light Of Regeneration", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"When the summoner died"}, 
		{"Homunculus will sacrifice to revive the summoner"}
	}
}
StateIconList[EFST_IDs.EFST_OVERED_BOOST] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Overed Boost", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Increases ASPD and Evasion"}, 
		{"to a fixed amount"}
	}
}
StateIconList[EFST_IDs.EFST_STYLE_CHANGE] = {
	haveTimeLimit = 0, descript = {
		{"Style Change", COLOR_TITLE_TOGGLE},
		{"Homunculus in Fighter Style"}
	}
}
StateIconList[EFST_IDs.EFST_MAGMA_FLOW] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Magma Flow", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"When receiving damage"}, 
		{"there is a chance to eject magma around it"}
	}
}
StateIconList[EFST_IDs.EFST_GRANITIC_ARMOR] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Granitic Armor", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Reduced damage taken"}, 
		{"Lose some HP when the status ends."}
	}
}
StateIconList[EFST_IDs.EFST_PYROCLASTIC] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Pyroclastic", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"µðÀÌÅÍ¿Í ÁÖÀÎÀÇ ¹«±â°¡"}, 
		{"È­¼Ó¼ºÀ¸·Î º¯È­"},
		{"Increased weapon damage"}
	}
}
StateIconList[EFST_IDs.EFST_VOLCANIC_ASH] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Volcanic Ash", COLOR_TITLE_DEBUFF},
		{"%s", COLOR_TIME}, 
		{"Reduced hit rate"}, 
		{"Skill has a chance of failing"},
		{"Increases fire damage taken"}
	}
}
StateIconList[EFST_IDs.EFST_OVERLAPEXPUP] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"Maldango Canned Cat", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"When killing monsters in Maldango"}, 
		{"Increases Base and Job EXP"},
		{"Increases Item drop rate"}
	}
}
StateIconList[EFST_IDs.EFST_ATKER_ASPD] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"´ëÈ¯´Ü", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Increases Max HP"}, 
		{"Increases HP recovery"}
	}
}
StateIconList[EFST_IDs.EFST_ATKER_MOVESPEED] = {
	haveTimeLimit = 1, posTimeLimitStr = 2, descript = {
		{"ÅÂÃ»´Ü", COLOR_TITLE_BUFF},
		{"%s", COLOR_TIME}, 
		{"Increases Max SP"}, 
		{"Increases SP recovery"}
	}
}
StateIconList[EFST_IDs.EFST_PLUSATTACKPOWER] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta Ataque"}
	}
}
StateIconList[EFST_IDs.EFST_PLUSMAGICPOWER] = {
	haveTimeLimit = 1, posTimeLimitStr = 1, descript = {
		{"%s", COLOR_TIME}, 
		{"Aumenta Ataque Mágico"}
	}
}