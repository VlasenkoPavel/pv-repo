import * as crypto from 'crypto';
import { ValidationError } from '../../core/http-error';

const ITERATION_COUNT = 3000;
const KEYLEN = 100;
const DIGSET = 'sha512';
const SALT_SIZE = 16;

export class CryptoGenerater {

    public static generatePasswordHash(pass: string, salt?: string): string {
        const passSalt = salt || CryptoGenerater.generateSalt();

        const isPasswordNotTrimmed = pass !== pass.trim();
        if (isPasswordNotTrimmed) {
            throw new ValidationError({date: ['Password can not include spaces at the beginning and the end.']});
        }
        const hash =
            crypto.pbkdf2Sync(pass, passSalt, ITERATION_COUNT, KEYLEN, DIGSET);
        return passSalt + hash.toString('hex');
    }

    /**
     * generate a password salt
     */
    public static generateSalt(): string {
        const salt = crypto.randomBytes(SALT_SIZE).toString('hex');
        return salt.substr(0, SALT_SIZE);
    }

    /**
     * Get password salt
     */
    public static getSalt(pass: string): string {
        return pass.substr(0, SALT_SIZE);
    }
}
