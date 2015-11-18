'use strict';

const SwaggerConnect = require('swagger-connect');
const app = require('connect')();
module.exports = app; // for testing

const config = {
  appRoot: __dirname // required config
};

SwaggerConnect.create(config, function(err, swaggerConnect) {
  if (err) { throw err; }

  // install middleware
  swaggerConnect.register(app);

  const port = process.env.PORT || 3000;
  app.listen(port);

  if (swaggerConnect.runner.swagger.paths['/hello']) {
    console.log('try this:\ncurl http://127.0.0.1:' + port + '/hello?name=Scott');
  }
});
