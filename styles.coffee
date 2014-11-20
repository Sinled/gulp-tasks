gulp = require 'gulp'
stylus = require 'gulp-stylus'
autoprefixer = require 'gulp-autoprefixer'
config = require '../config'
  .styles


gulp.task 'styles', ->
  gulp.src config.src
    .pipe stylus()
    .pipe autoprefixer config.autoprefixer
    .pipe gulp.dest config.dest
