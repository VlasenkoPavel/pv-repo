import 'reflect-metadata';
import { DbConnector } from '../../components/db-connector';
import { Connection } from 'typeorm';
import { Main } from '../../components/logging/logging';

export abstract class Load {

    protected connect: Connection;
    private db: DbConnector = DbConnector.getInstance();

    public async init(): Promise<void> {
        await this.db.connect();
        this.connect = await this.db.getConnection();
    }

    public async close(): Promise<void> {
        await this.db.closeConnection();
        Main.info('Connection to database sm_users are closed');
        process.exit();
    }

    public abstract load(): Promise<void>;

    protected addCreateUpdateTime(obj: { createTime: Date, updateTime: Date }) {
        obj.createTime = new Date();
        obj.updateTime = obj.createTime;
    }
}