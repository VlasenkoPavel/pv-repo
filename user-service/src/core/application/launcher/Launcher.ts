import * as express from 'express';
import { Main } from '../../../components/logging';
import { DbConnector } from '../../../components/db-connector';
import { Config, ConfigType, ServerConfig } from '../../../components/config';


const argv = require('yargs').argv;

class Launcher {
    protected app: express.Application;

    protected config: ServerConfig;

    constructor(app: express.Application) {
        this.app = app;
        this.config = <ServerConfig>Config.getInstance().getConfig(ConfigType.Server);
    }

    public launch(): void {
        this.startServer();
    }

    protected startServer(): void {
        const host = this.config.host;
        let port: number;

        argv.port ? port = argv.port : port = this.config.port;

        this.app.listen({host, port}, () => {
            Main.info(`Server started at http://${host}:${port}`);

            DbConnector.getInstance().getConnection()
                .then((connection) => {
                    connection.isConnected ?
                        Main.info(`Connection to the database: ${connection.options.database} is established`) :
                        Main.critical(`Connection to the database: ${connection.options.database} is not established`);

                })
                .catch(error => Main.critical(error));
        });
    }
}

export { Launcher };
