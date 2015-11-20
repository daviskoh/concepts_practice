'use strict';

require('babel-core/register');

const eightylegs = require('eightylegs')(process.env.EIGHTYLEGS_KEY);

const listName = '7';
const list = [
  'http://www.nba.com',
  'http://www.espnfc.us'
];

eightylegs.createUrlList(listName, list, (err, result) => {
  if (err) {
    console.log(err);
    throw err;
  }

  console.log(result);

  const opts = {
    app: 'FullPageContent.js',
    urllist: listName,
    max_depth: 0,
    max_urls: 20
  };

  const crawlName = '7';
  eightylegs.createCrawl(opts, crawlName, (err, result) => {
    if (err) {
      console.log(err);
      throw err;
    }

    console.log(result);
  });
});

