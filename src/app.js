var UI = require('ui');
var moment = require('moment');
var countdown = require('countdown');
require('moment-countdown');

var timeRemaining = moment().countdown("2015-11-28", countdown.DAYS, 2);

var main = new UI.Card({
  title: 'Countdown',
  subtitle: 'Vacation',
  body: timeRemaining.toString(),
});

main.show();
