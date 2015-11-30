'use strict';

const eightylegs = require('eightylegs')(process.env.EIGHTYLEGS_KEY);
const express = require('express');
const wrap = require('co-express');
const CronJob = require('cron').CronJob;
const bodyParser = require('body-parser');
const app = express();
const fs = require('fs');


app.use(bodyParser.json());


const pollResults = (crawlName) => {
  // every 60 seconds
  const job = new CronJob('0 * * * * *', () => {
    var pause;

    // dont make fresh request until previous one completes
    if (pause) return;

    eightylegs.getResultByName(crawlName, (err, result) => {
      if (!result) {
        pause = false;
        return fs.writeFileSync('NO-RESULTS.txt', 'no results', 'utf8');
      }

      fs.writeFileSync('FOUND-RESULTS.json', JSON.stringify(result), 'utf8');
      // write to file
      return job.stop();
    });

    pause = true;
  }, null, true, 'America/New_York');
};

app.post('/crawl', (req, res, next) => {
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

      if (err.code === 422) {
        return res.status(422).json({
          messsage: 'crawl name is already taken'
        });
      }

      return next(err);
    }

    pollResults(crawlName);

    return res.json(result);
  }); 
});

app.get('/healthcheck', (req, res) => {
  res.json({
    message: 'all good'
  });
});

const port = process.env.PORT || 3000;
console.log(`listening on port: ${port}`);
app.listen(port);

