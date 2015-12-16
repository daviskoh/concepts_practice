'use strict';

const CronJob = require('cron').CronJob;
const poll = require('./poll');

const job = new CronJob('*/20 * * * * *', () => {
  poll();
});

job.start();
console.log('starting cron');

