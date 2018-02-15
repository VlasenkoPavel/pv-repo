import { Load } from '../Load';
import { Config, ConfigType, ServerConfig } from '../../../components/config';

export class LoadSimplePassword extends Load {
    protected config: ServerConfig = <ServerConfig>Config.getInstance().getConfig(ConfigType.Server);

    public async load(): Promise<void> {
        await this.init();
        await this.loadSimplePassword();
        await this.close();
    }

    public async loadSimplePassword(): Promise<any> {
        await this.connect.query(`
            update "user" set "password" = '123qwe'
            where 1 = 1;
        `);
    }
}

(async function() {
    const loader = new LoadSimplePassword();
    await loader.load();
})();