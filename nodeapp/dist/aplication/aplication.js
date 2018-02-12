"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express = require("express");
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
const index_1 = require("../routes/index");
const users_1 = require("../routes/users");
const log_1 = require("../libs/log");
// const log = getLogger(module);
class Aplication {
    constructor() {
        this.app = express();
        this.config = config;
        this.init();
    }
    init() {
        // view engine setup
        this.app.set('views', path.join(__dirname, '../views'));
        this.app.set('view engine', 'ejs');
        // uncomment after placing your favicon in /public
        //app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
        this.app.use(logger('dev'));
        this.app.use(bodyParser.json());
        this.app.use(bodyParser.urlencoded({ extended: false }));
        this.app.use(cookieParser());
        this.app.use(express.static(path.join(__dirname, '../public')));
        this.app.use('/', index_1.router);
        this.app.use('/users', users_1.router);
        let catch404Handler;
        catch404Handler = function (req, res, next) {
            const err = new Error('Not Found');
            err.status = 404;
            next(err);
        };
        // catch 404 and forward to error handler
        this.app.use(catch404Handler);
        let errorhandler;
        errorhandler = function (err, req, res, next) {
            // set locals, only providing error in development
            res.locals.message = err.message;
            // res.locals.message = 'errorMes';
            res.locals.error = req.app.get('env') === 'development' ? err : {};
            // render the error page
            res.status(err.status || 500);
            res.render('error');
        };
        this.app.use(errorhandler);
    }
    start() {
        /**
         * Get port from environment and store in Express.
         */
        const port = this.config.get('port');
        this.app.set('port', port);
        /**
         * Create HTTP server.
         */
        const server = http.createServer(this.app)
            .listen(this.app.get('port'), () => log_1.logger.info(`Express server listening on port ${port}`));
        /**
         * Listen on provided port, on all network interfaces.
         */
        server.listen(port);
        server.on('error', onError);
        server.on('listening', onListening);
        /**
         * Normalize a port into a number, string, or false.
         */
        function normalizePort(val) {
            const port = parseInt(val, 10);
            if (isNaN(port)) {
                // named pipe
                return val;
            }
            if (port >= 0) {
                // port number
                return port;
            }
            return false;
        }
        /**
         * Event listener for HTTP server "error" event.
         */
        function onError(error) {
            if (error.syscall !== 'listen') {
                throw error;
            }
            var bind = typeof port === 'string'
                ? 'Pipe ' + port
                : 'Port ' + port;
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
        /**
         * Event listener for HTTP server "listening" event.
         */
        function onListening() {
            var addr = server.address();
            var bind = typeof addr === 'string'
                ? 'pipe ' + addr
                : 'port ' + addr.port;
            debug('Listening on ' + bind);
        }
    }
}
exports.Aplication = Aplication;
