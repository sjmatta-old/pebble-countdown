var UI = require('ui');
var moment = require('moment');
var countdown = require('countdown');
require('moment-countdown');

var main = new UI.Card({
  title: 'Countdown',
  subtitle: 'Vacation',
  body: moment().countdown("2015-11-28", countdown.DEFAULTS, 2).toString()
});

main.show();
