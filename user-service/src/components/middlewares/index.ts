import { DebugLoggingMiddleware } from './DebugLoggingMiddleware';
import { ErrorHandlingMiddleware } from './ErrorHandlingMiddleware';
//import { UnknownRouteHandler } from './UnkonwRouterHandler';
import { WarnLoggingMiddleware } from './WarnLoggingMiddleware';

const middlewares = [DebugLoggingMiddleware, ErrorHandlingMiddleware, WarnLoggingMiddleware];

export { middlewares };