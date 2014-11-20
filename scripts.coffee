gulp = require 'gulp'
sourcemaps = require 'gulp-sourcemaps'
traceur = require 'gulp-traceur'
config = require '../config'
  .scripts

gulp.task 'scripts', ->
