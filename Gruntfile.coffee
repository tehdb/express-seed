module.exports = (grunt) ->
        "use strict"
        grunt.initConfig
                watch :
                        all :
                                files : [
                                        'public/**'
                                        ]
                                options: {
                                        livereload: true
                                }

        grunt.loadNpmTasks('grunt-contrib-watch')
