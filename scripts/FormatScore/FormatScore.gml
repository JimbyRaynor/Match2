function FormatScore(myscore)
{
  var strScore = string(myscore);
  var L = string_length(strScore);
  L = min(L,8); // if larger than 8, no leading zeros
  var strScoreDisplay = string_repeat("0",8-L)+strScore;
  return strScoreDisplay;
}