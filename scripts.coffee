gulp = require 'gulp'
sourcemaps = require 'gulp-sourcemaps'
plumber = require 'gulp-plumber'
notify = require 'gulp-notify'
browserify = require 'gulp-browserify'
traceur = require 'gulp-traceur'
uglify = require 'gulp-uglify'


config = require '../config'
  .scripts

gulp.task 'scripts', ->
  gulp.src config.src
    .pipe plumber errorHandler: notify.onError("Error: <%= error.message %>")
    .pipe traceur sourceMaps: true
    .pipe browserify
      transform: ['es6ify']
      debug: true
    .pipe plumber.stop()
    .pipe gulp.dest config.dest
