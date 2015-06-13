concat     = require 'gulp-concat'
filter     = require 'gulp-filter'
gulp       = require 'gulp'
livereload = require 'gulp-livereload'
sass       = require 'gulp-sass'

gulp.task 'styles', ->
  gulp.src [
    './app/styles/**/*'
  ]
  .pipe sassFilter = filter '**/*.sass'
  .pipe sass(indentedSyntax: true).on('error', sass.logError)
  .pipe sassFilter.restore()
  .pipe concat 'all.css'
  .pipe gulp.dest './build'
  .pipe livereload()
