import {
    UserAttributes,
    SearchUserAttributes
} from 'sber-marketing-types/user-service';
import { User } from './User';

export interface IUserRepository {
    create: (user: UserAttributes | User) => Promise<User>;
    createTemp: (user: UserAttributes | User) => Promise<User>;
    getById: (id: number) => Promise<User>;
    findOne: (params?: SearchUserAttributes) => Promise<User>;
    list: (params?: SearchUserAttributes) => Promise<User[]>;
}