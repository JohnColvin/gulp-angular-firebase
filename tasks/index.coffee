gulp          = require 'gulp'
livereload    = require 'gulp-livereload'
slim          = require 'gulp-slim'

gulp.task 'index', ->
  gulp.src './app/index.slim'
  .pipe slim()
  .pipe gulp.dest './build'
  .pipe livereload()
