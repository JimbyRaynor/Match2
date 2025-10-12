/// @description Check for a match
if (global.cardselected1.spritenum == global.cardselected2.spritenum)
		{
			var mycard1 = global.cardselected1.position;
			var mycard2 = global.cardselected2.position;
			deck[|mycard1].visible  = false;
			deck[|mycard2].visible  = false;
			//show_error(string(global.cardselected1.position),true);  // true/false is unused !!!
			if (checkVictory(deck))
 			{
             global.gameState = STATE.stWon;
			}			
		}
resetSelection();
coverAllCards(deck);

if (global.gameState == STATE.stPaused)
{
  global.gameState = STATE.stPlaying;
}