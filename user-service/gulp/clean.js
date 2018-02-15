const fs = require('fs-extra');
const path = require('path');
const Q = require('q');

const DIR = path.resolve(__dirname, '../dist');
const PUBLIC = path.resolve(__dirname, '../public');

module.exports = function clean() {
    return Promise.all([emptyDir(DIR), emptyDir(PUBLIC)]);
}

function emptyDir(dir) {
    let deferred = new Q.defer();
    fs.emptyDir(dir, err => {
        if (err) {
            deferred.reject(err);
        } else {
            deferred.resolve();
        }
    });

    return deferred.promise;
}