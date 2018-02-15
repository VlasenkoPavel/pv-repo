// import { Middleware, ExpressMiddlewareInterface } from 'routing-controllers';
// import { Request, Response, NextFunction } from 'express';
// import { NotFoundError } from '../../core/http-error';
//
// const API_BASIC_URL = '/api';
// const FIRST_PRIORITY = 1;
//
//
// @Middleware({type: 'after', priority: FIRST_PRIORITY})
// export class UnknownRouteHandler implements ExpressMiddlewareInterface {
//     public use(req: Request, res: Response, next: NextFunction) {
//             if (req.url.startsWith(API_BASIC_URL) && !res.finished) {
//                 throw new NotFoundError(`Router ${req.url} not found`);
//             }
//             next();
//     }
// }

