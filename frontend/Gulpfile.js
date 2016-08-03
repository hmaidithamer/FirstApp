// Gulp Dependencies
var gulp = require('gulp');
var rename = require('gulp-rename');

// Build Dependencies
var browserify = require('gulp-browserify');
var uglify = require('gulp-uglify');

// Style Dependencies
var prefix = require('gulp-autoprefixer');
var minifyCSS = require('gulp-minify-css');

// Development Dependencies
var jshint = require('gulp-jshint');

gulp.task('browserify', function() {
  return gulp.src('js/index.js')
    .pipe(browserify({
      insertGlobals: false
    }))
    .pipe(uglify())
    .pipe(rename('bundle.min.js'))
    .pipe(gulp.dest('../web/frontend/static/js'));
});

gulp.task('minify', function() {
  return gulp.src('css/**/*.css')
    .pipe(prefix({ cascade: true }))
    .pipe(minifyCSS())
    .pipe(rename('bundle.min.css'))
    .pipe(gulp.dest('../web/frontend/static/css'));
});

gulp.task('watch', function() {
  gulp.watch('js/**/*.js', ['browserify']);
  gulp.watch('css/**/*.css', ['minify']);
});

gulp.task('build', ['browserify', 'minify']);

gulp.task('default', ['build', 'watch']);