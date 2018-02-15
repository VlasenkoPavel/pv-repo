import { UserAttributes } from 'sber-marketing-types/user-service';


export interface IInternalRepository {
    updateAttributes: (attributes: UserAttributes) => Promise<UserAttributes>;
}