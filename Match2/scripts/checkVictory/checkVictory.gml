function checkVictory(mydeck)
{
 if (ds_list_empty(mydeck))
 {
	 show_error("NOT a ds_list", true);
	 return false;
 }
 
 var mydecksize = ds_list_size(mydeck);
 for (var i=0; i < mydecksize; i++)
 {
	 if (mydeck[|i].visible == true)
	 {
		 return false; // some cards are visble,  so not gameover
	 }
 }
 return true;
}