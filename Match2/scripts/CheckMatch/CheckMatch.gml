function CheckMatch(){

/* for debugging
var err_ans = "answers = "+string(global.cardselected1.answers[0])
if (array_length(global.cardselected1.answers) > 1)
{
	err_ans = err_ans + " : "+string(global.cardselected1.answers[1])
}
err_ans = err_ans + ". card = "+ string(global.cardsprites[global.cardselected2.spritenum])

 show_error(err_ans,true)
*/

return  array_contains (global.cardselected1.answers, global.cardsprites[global.cardselected2.spritenum])


}