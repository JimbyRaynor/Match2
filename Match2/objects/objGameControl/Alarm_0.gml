/// @description Check for a match



//if    array_contains (global.cardselected1.answers, global.cardsprites[global.cardselected2.spritenum])
if CheckMatch()
{
	//  correct match
			var mycard1 = global.cardselected1.position;
			var mycard2 = global.cardselected2.position;
			deck[|mycard1].visible  = false;
			deck[|mycard2].visible  = false;
			//audio_play_sound(sndCorrect,1,false)
			audio_play_sound(sndShuffle,1,false);
			global.myScore = global.myScore+100+chainbonus;
			if (chainbonus == 0)
			{
				chainbonus = 20;
			}
		   else
		   {
				chainbonus = chainbonus * 2;
			}
			instance_create_depth(global.cardselected1.x+67,global.cardselected1.y+90,1,objParticleSysCorrect);
		    instance_create_depth(global.cardselected2.x+67,global.cardselected2.y+90,1,objParticleSysCorrect);

			//show_error(string(global.cardselected1.position),true);  // true/false is unused !!!
			if (checkVictory(deck))
 			{
             global.gameState = STATE.stWon;
			 global.myScore =  global.myScore + bonus;
			}			
}
else
{   // incorrect match
	 chainbonus = 0;
	 audio_play_sound(sndWrong,1,false)
	 	 instance_create_depth(global.cardselected1.x+67,global.cardselected1.y+120,1,objParticleSysNOTCorrect);
	    instance_create_depth(global.cardselected2.x+67,global.cardselected2.y+120,1,objParticleSysNOTCorrect);
}

resetSelection();
coverAllCards(deck);

if (global.gameState == STATE.stPaused)
{
  global.gameState = STATE.stPlaying;
}