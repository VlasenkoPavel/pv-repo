const gulpApidoc = require('gulp-apidoc');
const path = require('path');

module.exports = function apidoc() {
    gulpApidoc({
        config: path.join(__dirname, '../'),
        src: [
            path.join(__dirname, '../src/layers/application')
        ],
        dest: path.join(__dirname, '../public/static/doc')
    }, function (error) {
        if (error) {
            console.log(error);
        }
    });
}

