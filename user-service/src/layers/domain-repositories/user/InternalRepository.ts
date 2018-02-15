import { Repository, getRepository } from 'typeorm';
import { classToPlain } from 'class-transformer';
import { UserAttributes } from 'sber-marketing-types/user-service';

import { CryptoGenerater } from '../../../components/crypto';
import { IInternalRepository } from '../../domain/user';
import { UserDb } from '../../infrastructure/user';

export class InternalRepository implements IInternalRepository {
    protected id_: number;
    protected userDbService: Repository<UserDb> = getRepository(UserDb);

    public constructor(id: number) {
        this.id_ = id;
    }

    public async updateAttributes({ password, ...attributes }: UserAttributes): Promise<UserAttributes> {
        const updateParams = password ?
            {
                ...attributes,
                password: CryptoGenerater.generatePasswordHash(password)
            } :
            attributes;

        const userDb: UserDb = await this.userDbService.save({ ...updateParams, id: this.id_ }) as UserDb;

        return classToPlain(userDb) as UserAttributes;
    }
}