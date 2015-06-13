gulp          = require 'gulp'
livereload    = require 'gulp-livereload'
templateCache = require 'gulp-angular-templatecache'
slim          = require 'gulp-slim'

gulp.task 'templates', ->
  gulp.src './app/templates/**/*'
  .pipe slim()
  .pipe templateCache module: 'app'
  .pipe gulp.dest './build'
  .pipe livereload()
