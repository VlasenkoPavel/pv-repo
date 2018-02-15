import {
    UserAttributes,
    UpdateUserAttributes,
    SearchUserAttributes,
    UserResponse,
    UserArrayResponse
} from 'sber-marketing-types/user-service';

import { User } from './User';
import { IUserRepository } from './IUserRepository';
import { IInternalRepository } from './IInternalRepository';
import { UserQuery } from './types';

export {
    IUserRepository,
    IInternalRepository,
    UserAttributes,
    UpdateUserAttributes,
    User,
    SearchUserAttributes,
    UserResponse,
    UserArrayResponse,
    UserQuery
};