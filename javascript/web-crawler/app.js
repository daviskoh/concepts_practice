'use strict';

require('babel-core/register');

const eightylegs = require('eightylegs')(process.env.EIGHTYLEGS_KEY);
const express = require('express');
const wrap = require('co-express');
const CronJob = require('cron').CronJob;
const bodyParser = require('body-parser');
const app = express();
const fs = require('fs');


app.use(bodyParser.json());


const pollResults = (crawlName) => {
  const job = new CronJob('0 * * * * *', () => {
    var pause;

    if (pause) return;

    eightylegs.getResultByName(crawlName, (err, result) => {
      if (!result) {
        pause = false;
        return fs.writeFileSync('NO-RESULTS.txt', 'no results', 'utf8');
      }

      // if result
      fs.writeFileSync('FOUND-RESULTS.json', JSON.stringify(result), 'utf8');
      // write to file
      return job.stop();
    });

    pause = true;
  }, null, true, 'America/New_York');
};

app.post('/scrape', (req, res, next) => {
  const crawlName = req.body.name;

  if (!crawlName) return res.status(422);

  const opts = {
    app: 'scrape-ir-about-page',
    urllist: 'ir',
    max_depth: 100,
    max_urls: 20
  };

  eightylegs.createCrawl(opts, crawlName, (err, result) => {
    if (err) {
      console.log(err);
      return next(err);
    }

    pollResults(crawlName);

    return res.json(result);
  }); 
});

const port = process.env.PORT || 3000;
console.log(`listening on port: ${port}`);
app.listen(port);

