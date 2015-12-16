'use strict';

const ForeverMonitor = require('forever-monitor').Monitor;

const child = new (ForeverMonitor)('cron.js', {
  max: 3
});

child.on('exit', () => {
  console.log('***********************************');
  console.log('cron.js has exited after 3 restarts');
  console.log('***********************************');
});

child.start();

