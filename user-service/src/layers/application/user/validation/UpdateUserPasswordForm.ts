import { IsNotEmpty, IsString } from 'class-validator';
import { Expose, Exclude } from 'class-transformer';

@Exclude()
export class UpdateUserPasswordForm {
    @Expose()
    @IsNotEmpty()
    @IsString()
    public password: string;
}

