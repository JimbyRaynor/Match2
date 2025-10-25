
if ( visible and global.gameState == STATE.stPlaying)
{
	selected = true;
	audio_play_sound(sndSelect,1,false)
	//show_error("clicked",false);  // true/false is unused !!!
	global.numCardsPicked += 1;
	if (global.numCardsPicked > 1)
	{
		global.cardselected2 = self;
		global.gameState = STATE.stPaused;
        // now check for a match:
        objGameControl.alarm[0] = 1*game_get_speed(gamespeed_fps);			
   } // global.numCardsPicked > 1
 else {global.cardselected1 = self;}
	
}