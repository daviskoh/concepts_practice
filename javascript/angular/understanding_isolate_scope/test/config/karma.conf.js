// Karma configuration
// Generated on Mon Jan 27 2014 16:59:38 GMT-0500 (EST)

module.exports = function (config) {
    config.set({

        // base path, that will be used to resolve files and exclude
        basePath: '../../',


        // frameworks to use
        frameworks: ['jasmine'],


        // list of files / patterns to load in the browser
        files: [
            'src/libs/angular/angular.js',
            'src/libs/angular-sanitize/angular-sanitize.js',
            'src/libs/angular-cookies/angular-cookies.js',
            'src/libs/angular-ui-router/release/angular-ui-router.js',
            'src/libs/angular-mocks/angular-mocks.js',
            'src/app/**/*.js'
        ],


        // list of files to exclude
        exclude: [
            'src/libs/angular/*.min.js',
            'src/libs/angular-sanitize/*.min.js'
        ],


        plugins: [
            'karma-phantomjs-launcher',
            'karma-jasmine'
        ],

        // web server port
        port: 9876,


        // enable / disable colors in the output (reporters and logs)
        colors: true,


        // level of logging
        // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
        logLevel: config.LOG_INFO,


        // enable / disable watching file and executing tests whenever any file changes
        autoWatch: false,


        // Start these browsers, currently available:
        // - Chrome
        // - ChromeCanary
        // - Firefox
        // - Opera (has to be installed with `npm install karma-opera-launcher`)
        // - Safari (only Mac; has to be installed with `npm install karma-safari-launcher`)
        // - PhantomJS
        // - IE (only Windows; has to be installed with `npm install karma-ie-launcher`)
        browsers: ['PhantomJS'],


        // If browser does not capture in given timeout [ms], kill it
        captureTimeout: 60000,

        // Continuous Integration mode
        // if true, it capture browsers, run tests and exit
        singleRun: false
    });
};
