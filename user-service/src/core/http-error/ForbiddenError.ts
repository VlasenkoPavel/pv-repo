import { HttpError} from './HttpError';
import { ErrorCode } from './types';

class ForbiddenError extends HttpError {
    public get code(): ErrorCode {
        return ErrorCode.Forbidden;
    }
}

export { ForbiddenError };
