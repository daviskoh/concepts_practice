'use strict';

require('babel-core/register');

const eightylegs = require('eightylegs')(process.env.EIGHTYLEGS_KEY);

const listName = 'ir';

const opts = {
  app: 'scrape-ir-about-page',
  urllist: listName,
  max_depth: 100,
  max_urls: 20
};

const crawlName = process.argv[2];
eightylegs.createCrawl(opts, crawlName, (err, result) => {
  if (err) {
    console.log(err);
    throw err;
  }

  console.log(result);
});

