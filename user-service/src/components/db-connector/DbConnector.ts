import { Config, ConfigType } from '../config';
import { createConnection, Connection } from 'typeorm';
import { PostgresConnectionOptions } from 'typeorm/driver/postgres/PostgresConnectionOptions';
import { Main } from '../../components/logging';

export class DbConnector {

    private static instance: DbConnector;
    protected connection: Connection;

    private constructor() {}

    public static getInstance(): DbConnector {
        if (!this.instance) {
            this.instance = new DbConnector();
        }

        return this.instance;
    }

    public async connect(): Promise<void> {
        this.getConnection()
            .then((connection) => {
                connection.isConnected ?
                    Main.info(`Connection to the database: ${connection.options.database} is established`) :
                    Main.critical(`Connection to the database: ${connection.options.database} is not established`);
                this.connection = connection;

            })
            .catch(error => Main.critical(error));
    }

    public async getConnection(): Promise<Connection> {
        if (!this.connection) {
            this.connection = await this.createConnection();
        }
        return this.connection;
    }

    public async closeConnection(): Promise<void> {
        if (this.connection && this.connection.isConnected) {
            this.connection.close();
        }
    }

    protected async createConnection(): Promise<Connection> {
        const options = <PostgresConnectionOptions>Config.getInstance().getConfig(ConfigType.Db);
        const connection: Connection = await createConnection(options);
        return connection;
    }
}