import { IsNotEmpty, IsString, IsOptional, IsNumber } from 'class-validator';
import { Expose, Exclude } from 'class-transformer';

import { UserAttributes } from 'sber-marketing-types/user-service';

@Exclude()
export class CreateUserFormTemp {

    @Expose()
    @IsNotEmpty()
    @IsNumber()
    public id: number;

    @Expose()
    @IsNotEmpty()
    @IsString()
    public firstName: string;

    @Expose()
    @IsString()
    @IsOptional()
    public middleName: string;

    @Expose()
    @IsNotEmpty()
    @IsString()
    public secondName: string;

    @Expose()
    @IsNotEmpty()
    @IsString()
    public email: string;

    @Expose()
    @IsNotEmpty()
    @IsString()
    public phoneNumber: string;

    @Expose()
    @IsNotEmpty()
    @IsString()
    public password: string;

    public getUserCreateAttributes(): UserAttributes {
        return {
            id: this.id,
            firstName: this.firstName,
            middleName: this.middleName,
            secondName: this.secondName,
            email: this.email,
            phoneNumber: this.phoneNumber,
            password: this.password
        };
    }
}

