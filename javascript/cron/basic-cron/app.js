'use strict';

const CronJob = require('cron').CronJob;

var count = 0;

const job = new CronJob('*/5 * * * * *', () => {
  console.log('meow');
  count++;
});

job.start();

