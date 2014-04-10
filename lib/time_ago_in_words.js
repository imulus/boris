module.exports = function(seconds) {
  var to = new Date,
      from = seconds;

  var distance_in_seconds = ((to - from) / 1000);
  var distance_in_minutes = Math.floor(distance_in_seconds / 60);
  var tense = distance_in_seconds < 0 ? " from now" : " ago";
  distance_in_minutes = Math.abs(distance_in_minutes);
  if (distance_in_minutes == 0) { return 'less than a minute'+tense; }
  if (distance_in_minutes == 1) { return 'a minute'+tense; }
  if (distance_in_minutes < 45) { return distance_in_minutes + ' minutes'+tense; }
  if (distance_in_minutes < 90) { return 'about an hour'+tense; }
  if (distance_in_minutes < 1440) { return 'about ' + Math.floor(distance_in_minutes / 60) + ' hours'+tense; }
  if (distance_in_minutes < 2880) { return 'a day'+tense; }
  if (distance_in_minutes < 43200) { return Math.floor(distance_in_minutes / 1440) + ' days'+tense; }
  if (distance_in_minutes < 86400) { return 'about a month'+tense; }
  if (distance_in_minutes < 525960) { return Math.floor(distance_in_minutes / 43200) + ' months'+tense; }
  if (distance_in_minutes < 1051199) { return 'about a year'+tense; }

  return 'over ' + Math.floor(distance_in_minutes / 525960) + ' years';
}
