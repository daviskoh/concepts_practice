module.exports = function (grunt) {

    /**
     * Import Task Packages
     */

    require('time-grunt')(grunt);
    require('load-grunt-config')(grunt);

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        karma: {
            unit: {
                configFile: 'test/config/karma.conf.js',
                background: false,
                browsers: ['PhantomJS'],
                logLevel: 'ERROR',
                singleRun: true,
                runnerPort: 9999,
                plugins: [
                    "karma-jasmine",
                    "karma-phantomjs-launcher"
                ]
            }
        },

        html2js: {
            app: {
                options: {
                    module: 'myApp.templates',
                    base: 'src',
                    useStrict: true,
                    singleModule: true,
                    htmlmin: {
                        collapseBooleanAttributes: true,
                        collapseWhitespace: true,
                        removeComments: true
                    }
                },
                src: [ 'src/app/**/*.tpl.html' ],
                dest: 'src/app/templates.js'
            }
        }
    });

    /**
     * Define Tasks
     */
    
    // Run unit tests
    grunt.registerTask('unit', [
        'karma:unit'
    ]);
};
