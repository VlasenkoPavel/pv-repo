import { UserAttributes } from 'sber-marketing-types/user-service';
import { IInternalRepository } from './IInternalRepository';
import { CryptoGenerater } from '../../../components/crypto';

export class User {

    protected attributes_: UserAttributes;
    protected internalRepository_: IInternalRepository;

    constructor(attributes: UserAttributes, internalRepository: IInternalRepository) {
        this.attributes_ = attributes;
        this.internalRepository_ = internalRepository;
    }

    public get password(): string {
        return this.attributes_.password;
    }

    public get attributes(): UserAttributes {
        return  {
            id: this.attributes_.id,
            firstName: this.attributes_.firstName,
            middleName: this.attributes_.middleName,
            secondName: this.attributes_.secondName,
            email: this.attributes_.email,
            phoneNumber: this.attributes_.phoneNumber,
            createTime: this.attributes_.createTime,
            updateTime: this.attributes_.updateTime
        };
    }

    public async setAttributes(value: UserAttributes): Promise<void> {
        this.attributes_ = await this.internalRepository_.updateAttributes(value);
    }

    public checkPassword(inputPass: string): boolean {
        const salt = CryptoGenerater.getSalt(this.password);
        const passwordHash = CryptoGenerater.generatePasswordHash(inputPass, salt);
        return passwordHash == this.password;
    }
}