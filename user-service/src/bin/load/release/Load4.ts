import axios from 'axios';
import { UserData } from '../fixtures/types';

import { Load } from '../Load';
import { Main } from '../../../components/logging';
import { Config, ConfigType, ServerConfig } from '../../../components/config';

const argv = require('yargs').argv;

export class Load4 extends Load {

    protected config: ServerConfig = <ServerConfig>Config.getInstance().getConfig(ConfigType.Server);

    /**
     * Load fixtures
     */
    public async load(): Promise<void> {
        await this.init();
        await this.loadUsers();
        await this.close();
    }

    public async loadUsers(): Promise<void> {
        const usersData: UserData[] = require('../../../../fixtures/release/User');

        let i: number = 0;
        for (const item of usersData) {
            await this.postUsers(item).then(() => {
                ++i;
                Main.info(`Successfully added ${i} of ${usersData.length} users to database`);
            })
            .catch((error) => {
                Main.critical(`${error.message}`);
            });
        }
    }

    protected async postUsers(userData: UserData): Promise<void> {
        const host = this.config.host;
        let port: number;
        argv.port ? port = argv.port : port = this.config.port;

        await axios.post('/user', userData, { baseURL: `http://${host}:${port}` });
    }
}

/**
 * RUN
 */
(async function() {
    const loader = new Load4();
    await loader.load();
})();
