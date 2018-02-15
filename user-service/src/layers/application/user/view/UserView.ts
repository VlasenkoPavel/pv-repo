
import { UserResponse, UserArrayResponse } from 'sber-marketing-types/user-service';
import { User, UserAttributes } from '../../../domain/user';

export class UserViewOut {
    public static getUser(user: User): UserResponse {
        return {
            user: user.attributes
        };
    }
    public static getUserList(users: User[]): UserArrayResponse {
        const ArrayUserAttributes: UserAttributes[] = users.map((user) => {
             return user.attributes;
        });
        return {
            users: ArrayUserAttributes
        };
    }
}