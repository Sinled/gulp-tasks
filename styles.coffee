gulp = require 'gulp'
stylus = require 'gulp-stylus'
autoprefixer = require 'gulp-autoprefixer'
plumber = require 'gulp-plumber'
notify = require 'gulp-notify'

config = require '../config'
  .styles


gulp.task 'styles', ->
  gulp.src config.src
    .pipe plumber errorHandler: notify.onError("Error: <%= error.message %>")
    .pipe stylus()
    .pipe autoprefixer config.autoprefixer
    .pipe plumber.stop()
    .pipe gulp.dest config.dest
