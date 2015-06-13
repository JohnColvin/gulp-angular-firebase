coffee     = require 'gulp-coffee'
concat     = require 'gulp-concat'
filter     = require 'gulp-filter'
gulp       = require 'gulp'
livereload = require 'gulp-livereload'

gulp.task 'scripts', ->
  gulp.src [
    './node_modules/angular/angular.js'
    './bower_components/firebase/firebase.js'
    './node_modules/angularfire/dist/angularfire.js'
    './app/scripts/**/*'
  ]
  .pipe coffeeFilter = filter '**/*.coffee*'
  .pipe coffee()
  .pipe coffeeFilter.restore()
  .pipe concat 'all.js'
  .pipe gulp.dest './build'
  .pipe livereload()
