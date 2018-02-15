import { IsNotEmpty, IsString, IsOptional } from 'class-validator';
import { Expose, Exclude } from 'class-transformer';

@Exclude()
export class UpdateUserForm {
    @Expose()
    @IsNotEmpty()
    @IsString()
    @IsOptional()
    public firstName: string;

    @Expose()
    @IsString()
    @IsOptional()
    public middleName: string;

    @Expose()
    @IsNotEmpty()
    @IsString()
    @IsOptional()
    public secondName: string;

    @Expose()
    @IsNotEmpty()
    @IsString()
    @IsOptional()
    public email: string;

    @Expose()
    @IsNotEmpty()
    @IsString()
    @IsOptional()
    public phoneNumber: string;

    @Expose()
    @IsNotEmpty()
    @IsString()
    @IsOptional()
    public password: string;
}

