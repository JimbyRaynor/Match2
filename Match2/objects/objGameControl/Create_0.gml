font_enable_effects(fntOpenSans, true,{glowEnable: true, glowEnd: 16, glowColour: c_red});

// instance variables
bonus = 9999
chainbonus = 0

randomize();
numCards = 8;

//show_error("hello there", true); dialog that works with HTML5 :)

enum STATE   // enumerators are automatically Global in scope
{
	stPaused, stPlaying, stWon, stLost
};

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
	deck[|i].answers = global.cardans[i]
	deck[|i].show = 0;
	deck[|i].position = i;
	deck[|i].visible = false;
}

sptShuffle(deck);

