import { Repository, getRepository, SelectQueryBuilder } from 'typeorm';
import { plainToClass } from 'class-transformer';

import { UserDb } from '../../infrastructure/user';
import { IUserRepository, User, UserQuery } from '../../domain/user';
import { CryptoGenerater } from '../../../components/crypto';

import { UserAttributes, SearchUserAttributes } from 'sber-marketing-types/user-service';
import { NotFoundError } from '../../../core/http-error';
import { buildDomainInstance } from './buildDomainInstance';

class UserRepository implements IUserRepository {
    protected get userDbService(): Repository<UserDb> {
        return getRepository(UserDb);
    }

    public async create(user: UserAttributes): Promise<User> {
        user.password = CryptoGenerater.generatePasswordHash(user.password);
        user.status = 'active';
        const userDb: UserDb = await this.userDbService.save(plainToClass(UserDb, user));

        return buildDomainInstance(userDb);
    }

    public async createTemp(user: UserAttributes): Promise<User> {
        user.password = CryptoGenerater.generatePasswordHash(user.password);
        user.status = 'active';
        const userDb: UserDb = await this.userDbService.save(plainToClass(UserDb, user));

        return buildDomainInstance(userDb);
    }

    public async getById(id: Number): Promise<User> {
        const userDb: UserDb = await this.userDbService.findOneById({id});

        return buildDomainInstance(userDb);
    }

    public async findOne({ email }: SearchUserAttributes): Promise<User> {
        const userDb: UserDb = await this.userDbService.createQueryBuilder('user')
            .where('lower("email") like :email', { email })
            .getOne();

        if (!userDb) {
            throw new NotFoundError(`User with email "${email}" not found`);
        }

        return buildDomainInstance(userDb);
    }

    public async list(params?: UserQuery): Promise<User[]> {
        const queryBuilder: SelectQueryBuilder<UserDb> =
            this.userDbService.createQueryBuilder('user');
        const { ids, substring } = params;

        if (ids) {
            queryBuilder.whereInIds(ids);
        }
        if (substring) {
            queryBuilder.andWhere(`
                concat(lower("firstName"),' ',lower("secondName"),' ',email)
                like :substring`,
                {
                    substring: `%${substring.toLocaleLowerCase()}%`
                }
            );
        }

        const userDbs: UserDb[] = await queryBuilder.getMany();

        return userDbs.map(buildDomainInstance);
    }

}

export const userRepository = new UserRepository();