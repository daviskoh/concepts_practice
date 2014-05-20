'use strict';
var util = require('util');
var path = require('path');
var yeoman = require('yeoman-generator');
var chalk = require('chalk');


var EggheadGenerator = yeoman.generators.Base.extend({
  init: function () {
    this.pkg = require('../package.json');

    this.on('end', function () {
      if (!this.options['skip-install']) {
        this.installDependencies();
      }
    });
  },

  askFor: function () {
    var done = this.async();

    // have Yeoman greet the user
    this.log(this.yeoman);

    // replace it with a short and sweet description of your generator
    this.log(chalk.magenta('This is what you need to get started on Egghead tutorials.'));

    var prompts = [{
        name: 'tutorialName',
        message: 'Which egghead tutorial is this?'
      }];

    this.prompt(prompts, function (props) {
      this.tutorialName = props.tutorialName;

      done();
    }.bind(this));
  },

  app: function () {
    // create app directory
    this.directory('app', 'app');

    this.template('_index.html', 'app/index.html');

    // dependency files
    this.template('_package.json', 'package.json');
    this.template('_bower.json', 'bower.json');
  },

  runtime: function() {
    this.copy('bowerrc', '.bowerrc');
  }
});

module.exports = EggheadGenerator;