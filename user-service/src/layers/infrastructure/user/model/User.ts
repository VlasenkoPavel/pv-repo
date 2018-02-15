import { Entity, Column, PrimaryGeneratedColumn, CreateDateColumn, UpdateDateColumn  } from 'typeorm';

@Entity()
export class User {

    @PrimaryGeneratedColumn()
    public id: number;

    @Column('varchar')
    public firstName: string;

    @Column('varchar')
    public middleName: string;

    @Column('varchar')
    public secondName: string;

    @Column('varchar')
    public email: string;

    @Column('varchar')
    public phoneNumber: string;

    @Column('varchar')
    public password: string;

    @Column('varchar')
    public status: string;

    @CreateDateColumn({type: 'timestamp'})
    public createTime: Date;

    @UpdateDateColumn({type: 'timestamp'})
    public updateTime: Date;
}