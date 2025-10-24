font_enable_effects(fntOpenSans, true,{glowEnable: true, glowEnd: 16, glowColour: c_red});

bonus = 9999
chainbonus = 0

randomize();
numCards = 8;

// instance variables
// can have any order for cardsprites array now
cardsprites = [spr1,spr2,spr3,spr4,spr5,spr6,spr7,spr8,spr1ans,spr2ans,spr3ans,spr4ans,spr5ans,spr6ans,spr7ans,spr8ans]
// best to have cards with same answer adjacent
cardans[0] = [spr1ans, spr5ans]  // answers for spr1
cardans[1] = [spr2ans]                   // answers for spr2
cardans[2] = [spr3ans,spr4ans]  // answers for spr3
cardans[3] = [spr4ans,spr3ans]  // answers for spr4
cardans[4] = [spr5ans,spr1ans]  // answers for spr5
cardans[5] = [spr6ans]                  // answers for spr6
cardans[6] = [spr7ans]                  // answers for spr7
cardans[7] = [spr8ans]                  // answers for spr8
// answer cards  ... same pattern as above :) // could write a function for this ...
cardans[8] = [spr1, spr5]              // answers for spr1ans
cardans[9] = [spr2]                         // answers for spr2ans
cardans[10] = [spr3,spr4]             // answers for spr3ans
cardans[11] = [spr4,spr3]            // answers for spr4ans
cardans[12] = [spr5,spr1]            // answers for spr5ans
cardans[13] = [spr6]                     // answers for spr6ans
cardans[14] = [spr7]                     // answers for spr7ans
cardans[15] = [spr8]                    // answers for spr8ans

//show_error("hello there", true); dialog that works with HTML5 :)

enum STATE   // enumerators are automatically Global in scope
{
	stPaused, stPlaying, stWon, stLost
};
global.gameState = STATE.stPlaying;
global.numCardsPicked = 0;
global.cardselected1 = noone;
global.cardselected2 = noone;

game_set_speed(30, gamespeed_fps); // 30 fps game


deck = ds_list_create();
deckSize = numCards * 2;
for (var i = 0; i < deckSize; i++)
{
	ds_list_add(deck,instance_create_layer(0,0,"Instances", objCard))
}

for (var i = 0; i < deckSize; i++)
{
	deck[|i].spritenum  = i;
	deck[|i].answers = cardans[i]
	deck[|i].show = 0;
	deck[|i].position = i;
	deck[|i].visible = false;
}

sptShuffle(deck);

