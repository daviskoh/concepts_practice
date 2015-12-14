'use strict';

const fs = require('fs');
const mongoClient = require('mongodb').MongoClient;
const JSONStream = require('JSONStream');

const options = {
  db: 'mongodb://localhost:27017/test-mongo-write-stream',
  collection: 'scrapePages'
};

const streamToMongo = require('stream-to-mongo')(options);

// read / write json contents to mongo
const fileName = 'scrape.json';
const readStream = fs.createReadStream(fileName, {encoding:'utf-8'})
  .pipe(JSONStream.parse(['pages']))
  .pipe(streamToMongo);

readStream.on('error', () => {
  throw new Error('error reading file');
});

streamToMongo.on('finish', () => {
  console.log('done writing');
});

