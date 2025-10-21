function sptShuffle(gamedeck)
{
  audio_play_sound(sndShuffle,1,false)
  var mydecksize = ds_list_size(gamedeck);
  var cardsx = 130;
  var cardsy=10;
  ds_list_shuffle(gamedeck);
  var cards = 1
  for (var i =0;i <deckSize; i++)
  {
	 objGameControl.deck[|i].x = cardsx;
	 objGameControl.deck[|i].y = cardsy; 
	 objGameControl.deck[|i].position = i;
	 objGameControl.deck[|i].show = 0;
	 objGameControl.deck[|i].visible = true; 
	 objGameControl.deck[|i].image_xscale = 0.5; 
	 objGameControl.deck[|i].image_yscale = 0.5; 
	 if (cards % 4 == 0)
	 {
		 cardsx = 130;
		 cardsy  += 190;
	 }
	 else {cardsx += 160; }
	 cards++;
  }
  
}