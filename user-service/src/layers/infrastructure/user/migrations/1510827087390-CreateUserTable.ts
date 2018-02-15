import { MigrationInterface, QueryRunner } from 'typeorm';

export class CreateUserTable1510827087390 implements MigrationInterface {

    public async up(queryRunner: QueryRunner): Promise<any> {
        await queryRunner.query(
            `create table "user" (
                "id" serial primary key,
                "firstName" varchar not null,
                "middleName" varchar null,
                "secondName" varchar not null,
                "email" varchar not null,
                "phoneNumber" varchar not null,
                "password" varchar not null,
                "createTime" timestamp not null,
                "updateTime" timestamp not null,
                UNIQUE ("email")
            )
            `
        );
    }

    public async down(queryRunner: QueryRunner): Promise<any> {
        await queryRunner.query(`drop table "user"`);
    }

}
