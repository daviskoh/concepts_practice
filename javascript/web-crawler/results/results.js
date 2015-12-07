'use strict';

require('babel-core/register');

const eightylegs = require('eightylegs')(process.env.EIGHTYLEGS_KEY);
const fs = require('fs');

eightylegs.getResultByName(process.argv.slice(2), (err, result) => {
  if (!result) {
    return fs.writeFileSync('no-results.txt', 'no results', 'utf8');
  }

  fs.writeFileSync('found-results.txt', result, 'utf8');
});

