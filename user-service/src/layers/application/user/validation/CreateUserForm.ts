import { IsNotEmpty, IsString, IsOptional  } from 'class-validator';
import { Expose, Exclude } from 'class-transformer';

import { UserAttributes } from 'sber-marketing-types/user-service';

@Exclude()
export class CreateUserForm {
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
            firstName: this.firstName,
            middleName: this.middleName,
            secondName: this.secondName,
            email: this.email,
            phoneNumber: this.phoneNumber,
            password: this.password
        };
    }
}

