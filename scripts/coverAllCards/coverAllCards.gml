function coverAllCards(mydeck)
{
 if (!ds_list_empty(mydeck))
 {
	 var mydecksize = ds_list_size(mydeck);
	 for (var i =0;i < mydecksize; i++)
	 {
      mydeck[|i].show = 0;
	 }
 }
 else
 {
	 show_error("ERROR: not ds_list",true);
 }
 
}