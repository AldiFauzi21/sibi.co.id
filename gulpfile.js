var gulp = require('gulp');
var sass = require('gulp-sass');

sass.compiler = require('node-sass')

gulp.task('sass', function() {
    return gulp.src('style/scss/style.scss')
        .pipe(sass())
        .pipe(gulp.dest('style/css'))
})