const gulp = require('gulp');
const path = require('path');
const lint = require('gulp-tslint');

const DIRS = ['src/**/*.ts', '!src/**/*.css.d.ts'];

module.exports = function tslint() {
    return gulp.src(DIRS)
        .pipe(lint({
            formatter: 'stylish',
            fix: true
        }))
        .pipe(lint.report({
            emitError: false,
            summarizeFailureOutput: true
        }));
}