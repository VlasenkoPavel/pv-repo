export enum Success {
    Ok = 200,
    Created = 201
}

export enum Error {
    InternalServerError = 500,
    BadRequest = 400,
    Unauthorized = 401,
    Forbidden = 403,
    NotFound = 404,
    UnprocessableEntity = 422
}
