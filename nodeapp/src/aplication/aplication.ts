import * as express from 'express';
import { createExpressServer } from "routing-controllers";

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

import { logger as log } from '../libs/log';
import { Dbconnector } from '../db/dbconnector/dbconnector';
// const log = getLogger(module);

class Aplication {
    private app: express.Application;
    private config: any;

    constructor(controllersDir: string) {

        this.app = createExpressServer({
            controllers: [`${controllersDir}/*.js`]
         });

        this.config = config;
        this.init();
    }

    private init() {
        // this.app.set('views', path.join(__dirname, '../views'));
        // this.app.set('view engine', 'ejs');

        // uncomment after placing your favicon in /public
        //app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
        this.app.use(logger('dev'));
        // this.app.use(bodyParser.json());
        // this.app.use(bodyParser.urlencoded({ extended: false }));
        // this.app.use(cookieParser());
        this.app.use(express.static(path.join(__dirname, '../public')));

        let catch404Handler: express.Handler;

        catch404Handler = (req: express.Request, res: express.Response, next: express.NextFunction) => {
            const err: any = new Error('Not Found');
            err.status = 404;
            next(err);
        }
        // catch 404 and forward to error handler
        this.app.use(catch404Handler);
        let errorhandler: express.ErrorRequestHandler;

        errorhandler = (err: any, req: express.Request, res: express.Response, next: express.NextFunction) => {
            res.locals.message = err.message;
            res.locals.error = req.app.get('env') === 'development' ? err : {};
            res.status(err.status || 500);
            console.log(err);
        }
        this.app.use(errorhandler);
    }

    public start() {

        const port = this.config.get('port');

        const dbconnector = new Dbconnector(this.config.get('dbconfig'));
        dbconnector.createDbConnection();

        this.app.listen(port, log.info(`server satarted on port ${port}`));
        // server.on('error', onError);
        // server.on('listening', onListening);

        /**
         * Event listener for HTTP server "error" event.
         */
    }

    private onError(error: any) {
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

    // /**
    //  * Event listener for HTTP server "listening" event.
    //  */
    // private onListening() {
    //     var addr = this.app.address();
    //     var bind = typeof addr === 'string'
    //         ? 'pipe ' + addr
    //         : 'port ' + addr.port;
    //     debug('Listening on ' + bind);
    // }

}

export { Aplication };
