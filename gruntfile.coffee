module.exports = (grunt) ->

  grunt.initConfig

    clean: ['dist']

    coffee:
      src:
        files: [
          expand: true
          src: '**/*.coffee'
          dest: 'dist/src'
          cwd: 'src'
          ext: '.js'
        ]

    watch:
      files: [
        '**/*.coffee'
        '**/*.html'
      ]
      tasks: ['build']

    # connect:
    #   options:
    #     port: 9000
    #     hostname: '0.0.0.0'
    #     livereload: 35729
    #   dist:
    #     options:
    #       base: 'dist'

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-file-append'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-copy'

  grunt.registerTask 'build', ['clean', 'coffee:src']
  grunt.registerTask 'serve', ['build', 'watch']
