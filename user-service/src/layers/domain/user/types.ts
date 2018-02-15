import { SearchUserAttributes } from 'sber-marketing-types/user-service';

export interface UserQuery extends SearchUserAttributes {
    ids?: number[];
    substring?: string;
}