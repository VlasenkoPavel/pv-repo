"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
const routing_controllers_1 = require("routing-controllers");
const path = require('path');
const favicon = require('serve-favicon');
const logger = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const debug = require('debug')('nodeapp:server');
const http = require('http');
const config = require('../../config');
// var log = require('../libs/log')(module);
// import { log } from 'util';
const log_1 = require("../libs/log");
const dbconnector_1 = require("../db/dbconnector/dbconnector");
// const log = getLogger(module);
class Aplication {
    constructor(controllersDir) {
        this.app = routing_controllers_1.createExpressServer({
            controllers: [`${controllersDir}/*.js`]
        });
        this.config = config;
        this.init();
    }
    init() {
        // this.app.set('views', path.join(__dirname, '../views'));
        // this.app.set('view engine', 'ejs');
        // uncomment after placing your favicon in /public
        //app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
        this.app.use(logger('dev'));
        // this.app.use(bodyParser.json());
        // this.app.use(bodyParser.urlencoded({ extended: false }));
        // this.app.use(cookieParser());
        this.app.use(express.static(path.join(__dirname, '../public')));
        let catch404Handler;
        catch404Handler = (req, res, next) => {
            const err = new Error('Not Found');
            err.status = 404;
            next(err);
        };
        // catch 404 and forward to error handler
        this.app.use(catch404Handler);
        let errorhandler;
        errorhandler = (err, req, res, next) => {
            res.locals.message = err.message;
            res.locals.error = req.app.get('env') === 'development' ? err : {};
            res.status(err.status || 500);
            console.log(err);
        };
        this.app.use(errorhandler);
    }
    start() {
        const port = this.config.get('port');
        const dbconnector = new dbconnector_1.Dbconnector(this.config.get('dbconfig'));
        dbconnector.createDbConnection();
        this.app.listen(port, log_1.logger.info(`server satarted on port ${port}`));
        // server.on('error', onError);
        // server.on('listening', onListening);
        /**
         * Event listener for HTTP server "error" event.
         */
    }
    onError(error) {
        if (error.syscall !== 'listen') {
            throw error;
        }
        var bind = 'Port ' + this.config.get('port');
        // handle specific listen errors with friendly messages
        switch (error.code) {
            case 'EACCES':
                console.error(bind + ' requires elevated privileges');
                process.exit(1);
                break;
            case 'EADDRINUSE':
                console.error(bind + ' is already in use');
                process.exit(1);
                break;
            default:
                throw error;
        }
    }
}
exports.Aplication = Aplication;
