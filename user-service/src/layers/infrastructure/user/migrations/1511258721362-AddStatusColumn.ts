import { MigrationInterface, QueryRunner } from 'typeorm';

export class AddStatusColumn1511258721362 implements MigrationInterface {

    public async up(queryRunner: QueryRunner): Promise<any> {
        await queryRunner.query(`
            alter table "user"
                add column "status" varchar
        `);
    }

    public async down(queryRunner: QueryRunner): Promise<any> {
        await queryRunner.query(`
            alter table "user"
                drop column "status"
        `);
    }

}
