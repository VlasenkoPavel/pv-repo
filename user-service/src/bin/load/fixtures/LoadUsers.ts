import { Main } from '../../../components/logging';
import axios from 'axios';
import { UserData } from './types';
import { Config, ConfigType, ServerConfig } from '../../../components/config';

const argv = require('yargs').argv;

export class LoadUsers {

    protected config: ServerConfig = <ServerConfig>Config.getInstance().getConfig(ConfigType.Server);

    public async load(): Promise<void> {
        const usersData: UserData[] = require('../../../../fixtures/Users');

        const promises: Promise<void>[] = [];

        for (const item of usersData) {
            promises.push(this.loadUsers(item));
        }

        await Promise.all(promises)
            .then(() => {
                Main.info(`Successfully added ${usersData.length} users to database`);
            })
            .catch((error) => {
                Main.critical(`${error.message}`);
            });
    }

    protected async loadUsers(userData: UserData): Promise<void> {
        const host = this.config.host;
        let port: number;

        argv.port ? port = argv.port : port = this.config.port;

        await axios.post('/user/temp', userData, { baseURL: `http://${host}:${port}` });
    }
}