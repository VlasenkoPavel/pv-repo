"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const winston = require('winston');
var ENV = process.env.NODE_ENV;
// can be much more flexible than that O_o
function getLogger(module) {
    var path = module.filename.split('/').slice(-2).join('/');
    return new winston.Logger({
        transports: [
            new winston.transports.Console({
                colorize: true,
                level: (ENV == 'development') ? 'debug' : 'error',
                label: path
            })
        ]
    });
}
exports.getLogger = getLogger;
