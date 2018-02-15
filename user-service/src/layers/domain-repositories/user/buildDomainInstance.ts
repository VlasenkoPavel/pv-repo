import { User } from '../../domain/user';
import { UserAttributes } from 'sber-marketing-types/user-service';
import { UserDb } from '../../infrastructure/user';
import { InternalRepository } from './InternalRepository';
import { IInternalRepository } from '../../domain/user';



export function buildDomainInstance(userDbView: UserDb): User {
    const {
        id,
        firstName,
        middleName,
        secondName,
        email,
        phoneNumber,
        password,
        status,
        avatarSrc,
        createTime,
        updateTime
    } = <UserAttributes>userDbView;

    const internalRepository: IInternalRepository = new InternalRepository(id);

    return new User(
        {
            id,
            firstName,
            middleName,
            secondName,
            email,
            phoneNumber,
            password,
            status,
            avatarSrc,
            createTime,
            updateTime
        },
        internalRepository
    );
}