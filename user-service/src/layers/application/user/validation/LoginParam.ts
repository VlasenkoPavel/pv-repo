import { IsNotEmpty, IsString } from 'class-validator';
import { Expose, Exclude } from 'class-transformer';

@Exclude()
export class LoginParam {
    @Expose()
    @IsNotEmpty()
    @IsString()
    public password: string;
}