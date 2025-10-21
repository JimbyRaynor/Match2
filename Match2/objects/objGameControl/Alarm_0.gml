/// @description Check for a match



//if (global.cardselected1.spritenum+8 == global.cardselected2.spritenum) or (global.cardselected2.spritenum+8 == global.cardselected1.spritenum)

var err_ans = "answers = "+string(global.cardselected1.answers[0])
if (array_length(global.cardselected1.answers) > 1)
{
	err_ans = err_ans + " : "+string(global.cardselected1.answers[1])
}
err_ans = err_ans + ". card = "+ string(cardsprites[global.cardselected2.spritenum])
//show_error(err_ans,true)

if    array_contains (global.cardselected1.answers, cardsprites[global.cardselected2.spritenum])
{
			var mycard1 = global.cardselected1.position;
			var mycard2 = global.cardselected2.position;
			deck[|mycard1].visible  = false;
			deck[|mycard2].visible  = false;
			//audio_play_sound(sndCorrect,1,false)
			audio_play_sound(sndShuffle,1,false)
			global.myScore += 100;
			//show_error(string(global.cardselected1.position),true);  // true/false is unused !!!
			if (checkVictory(deck))
 			{
             global.gameState = STATE.stWon;
			}			
}
else
{
	 global.myScore -= 200;
	 global.myScore  = max(global.myScore,0)
	 audio_play_sound(sndWrong,1,false)
	 }

resetSelection();
coverAllCards(deck);

if (global.gameState == STATE.stPaused)
{
  global.gameState = STATE.stPlaying;
}