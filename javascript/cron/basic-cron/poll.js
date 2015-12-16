'use strict';

const fs = require('fs');

// after 10 sec, create a file
// start polling immediately, and stop when found

module.exports = () => {
  setTimeout(() => {
    fs.writeFileSync('data.json', '{"bro": "foo"}', 'utf8');
    console.log('-- wrote to data.json --');
  }, 10000);

  var interval = setInterval(() => {
    console.log('polling...');

    var data = fs.readFileSync('data.json', 'utf8');
    if (data) {
      console.log(data);
      fs.writeFileSync('data.json', '', 'utf8');
      return clearInterval(interval);
    }
  }, 2000);
};

