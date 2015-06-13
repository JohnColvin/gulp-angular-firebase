gulp       = require 'gulp'
livereload = require 'gulp-livereload'
watch      = require 'gulp-watch'

gulp.task 'watch', ->
  livereload.listen()
  watch './app/scripts',    -> gulp.start 'scripts'
  watch './app/styles',     -> gulp.start 'styles'
  watch './app/templates',  -> gulp.start 'templates'
  watch './app/index.slim', -> gulp.start 'index'
