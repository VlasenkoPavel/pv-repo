import { Request, Response, NextFunction } from 'express';
import { Middleware, HttpError, ExpressErrorMiddlewareInterface } from 'routing-controllers';
import {
    HttpError as CoreError, NotFoundError, InternalServerError, CvValidationError, BadRequestError, ErrorCode
} from '../../core/http-error';
import { Main } from '../logging';

const LAST_PRIORITY = 0;

@Middleware({type: 'after', priority: LAST_PRIORITY})
export class ErrorHandlingMiddleware implements ExpressErrorMiddlewareInterface {
    public error(error: Error, request: Request, response: Response, next: NextFunction) {
        const httpCode = (error instanceof HttpError) ? error.httpCode : ErrorCode.InternalServerError;
        const coreError = (error instanceof CoreError)
            ? error
            : this.createCoreError(httpCode, error);
        const status = coreError ? coreError.code : httpCode;
        const data = coreError ? coreError.data : error;
        response.status(status).json({data});
        next();
    }

    protected createCoreError(status: number, error: Error): CoreError | null {
        const message = error.message;
        let result = null;
        switch (status) {
            case ErrorCode.BadRequest:
                const errors = (<any>error).errors;
                result = errors
                    ? new CvValidationError(errors)
                    : new BadRequestError(message);
                Main.error(result);
                Main.error(error.message);
                break;
            case ErrorCode.NotFound:
                result = new NotFoundError(message);
                Main.error(result);
                Main.error(error.message);
                break;
            case ErrorCode.InternalServerError:
                result = new InternalServerError(message);
                result.stack = error.stack;
                Main.critical(result);
                Main.critical(error.message);
                break;
        }
        return result;
    }
}
