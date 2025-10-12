randomize();
numCards = 7;

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
	deck[|i].spritenum  =( i % numCards) + 1;
	deck[|i].show = 0;
	deck[|i].position = i;
	deck[|i].visible = false;
}

sptShuffle(deck);

