gulp = require 'gulp'
sourcemaps = require 'gulp-sourcemaps'
traceur = require 'gulp-traceur'
errlog = require './utils/errlog'
config = require '../config'
  .scripts

gulp.task 'scripts', ->
  gulp.src config.src
    .pipe sourcemaps.init()
    .pipe traceur()
    .pipe sourcemaps.write()
    .pipe gulp.dest config.dest
    .on 'error', errlog
